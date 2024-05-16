@extends('employee.layouts.dashboard')
@section('content')
    <h1>ur machines</h1>
    <!-- Légende des couleurs associées à TP, TI et TO -->
    <div class="card-footer">
        <div class="d-flex align-items-center">
            <div class="color-box" style="background-color: green; width: 20px; height: 20px;"></div>
            <span class="ml-2">TP: temps de production</span>
        </div>
        <div class="d-flex align-items-center">
            <div class="color-box" style="background-color:blue ; width: 20px; height: 20px;"></div>
            <span class="ml-2">TI : temps d'intervention</span>
        </div>
        <div class="d-flex align-items-center">
            <div class="color-box" style="background-color: red; width: 20px; height: 20px;"></div>
            <span class="ml-2">TO : temps occupée</span>
        </div>
    </div>
    <div>
        <h3>total des machinnes pour vous est {{$machines->count()}}</h3>
    </div>

    <!-- Content Row -->
    <div class="row">
        @if($machines->count()>0)
            @foreach($machines as  $machine)
                <!-- Card pour chaque machine -->
                <div class="col-lg-6 mb-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card shadow h-100">
                                <!-- En-tête de la carte avec l'ID de la machine -->
                                <div class="card-header">
                                    <h5 class="card-title">ID: {{ $machine->id }}</h5>

                                    <!-- Affichage de la phrase en fonction du statut de la machine -->
                                    @if($machine->statut == 0)
                                        <p id="statut_{{ $machine->id }}">Status: Machine en repos</p>
                                    @elseif($machine->statut == 1)
                                        <p id="statut_{{ $machine->id }}">Status: Machine en production</p>
                                    @elseif($machine->statut == 2)
                                        <p id="statut_{{ $machine->id }}">Status: Machine en état d'intervention</p>
                                    @elseif($machine->statut == 3)
                                        <p id="statut_{{ $machine->id }}">Status: Machine occupée</p>
                                    @endif
                                </div>
                                <div class="card-body">
                                    <!-- Graphique Highcharts -->
                                    <div id="machineChart{{ $machine->id }}"></div>
                                </div>
                                <!-- Pied de page de la carte -->
                                <div class="card-footer">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @else
            <div class="col-12">
                <div class="text-center text-muted">
                    Aucune machine associée à vous pour le moment.
                </div>
            </div>
        @endif


    </div>

    <!-- Inclure Highcharts -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script>
        var previousStatus = {};

        function checkStatusChanges() {
            $.ajax({
                url: '/check-status-changes',
                method: 'GET',
                success: function (response) {
                    response.forEach(function (machine) {
                        var machineId = machine.id;
                        var currentStatut = $('#' + machine.statut).text();
                        var previousStatut = previousStatus[machineId];
                        console.log(currentStatut, previousStatut);
                        if (previousStatut && machine.statut !== previousStatut) {
                            updateStatus(machine, machine.statut);
                            showToast(machineId, machine.statut);
                        }
                        previousStatus[machineId] = machine.statut;
                    });
                }
            });
        }

        function updateStatus(machine, status) {
            // Objet de mapping des statuts aux messages correspondants
            var statusMessages = {
                0: 'Status: Machine en repos',
                1: 'Status: Machine en production',
                2: 'Status: Machine en état d\'intervention',
                3: 'Status: Machine occupée'
            };

            // Vérifier si le statut existe dans le mapping
            var statusMessage = statusMessages[status];

            // Si le statut n'est pas trouvé, utiliser un message par défaut
            if (!statusMessage) {
                statusMessage = 'Statut inconnu';
            }

            // Mettre à jour le texte de la balise span avec le message de statut
            $('#statut_' + machine.id).text(statusMessage);
        }

        function showToast(machineId, status) {
            var statusMessage = getStatusMessage(status);
            Toastify({
                text: 'Le statut de la machine ' + machineId + ' est maintenant ' + statusMessage,
                duration: 3000,
                gravity: "bottom",
                backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",

            }).showToast();
        }

        setInterval(checkStatusChanges, 5000);

        function getStatusMessage(status) {
            var statusMessage;
            switch (status) {
                case 0:
                    statusMessage = 'Machine en repos';
                    break;
                case 1:
                    statusMessage = 'Machine en production';
                    break;
                case 2:
                    statusMessage = 'Machine en état d\'intervention';
                    break;
                case 3:
                    statusMessage = 'Machine occupée';
                    break;
                default:
                    statusMessage = 'Statut inconnu';
                    break;
            }
            return statusMessage;
        }
    </script>
    <!-- Scripts pour créer les graphiques -->
    @foreach($machines as $machine)
        <script>
            // Données pour le graphique Highcharts de la machine actuelle
            var machine{{ $machine->id }}Data = {
                chart: {
                    type: 'pie'
                },
                title: {
                    text: 'Machine {{ $machine->id }}'
                },
                colors: ['green', 'blue', 'red'], // Couleurs pour TP, TI et TO
                series: [{
                    name: 'temps par seconde',
                    colorByPoint: true,
                    data: [{
                        name: 'TP',
                        y: {{ $machine->TP  }}
                    }, {
                        name: 'TI',
                        y: {{ $machine->TI }}
                    }, {
                        name: 'TO',
                        y: {{ $machine->TO }}
                    }]
                }]
            };


            // Créer le graphique Highcharts
            Highcharts.chart('machineChart{{ $machine->id }}', machine{{ $machine->id }}Data);
        </script>
    @endforeach

@endsection
