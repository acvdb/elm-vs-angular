(function() {
    'use strict';

    angular.module('myApp')

        .component('vehicleForm', {
            controller: function() {
                this.$onInit = function() {
                    this.vehicle = {
                        licensePlate: '',
                        mileage: '',
                        firstName: '',
                        lastName: ''
                    }
                };

                this.submit = function() {
                    console.log('Submitted!');
                    console.log(this.vehicle);
                }
            },
            template: `
                <form style="margin: 10px">
                    <input ng-model="$ctrl.vehicle.licensePlate" placeholder="License plate">
                    <input ng-model="$ctrl.vehicle.mileage" placeholder="Mileage">
                    <input ng-model="$ctrl.vehicle.firstName" placeholder="First name">
                    <input ng-model="$ctrl.vehicle.lastName" placeholder="Last name">
                    <button type="submit" ng-click="$ctrl.submit()">Submit</button>
                </form>`
        });
})();



