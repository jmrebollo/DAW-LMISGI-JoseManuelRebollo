var appOffices;

function myCallback(data) {
    appOffices = data;

    var html = '<h1>Oficines</h1>';

    data.map(function(oficina) {

        var adreca = oficina.addressLine1;
        if (oficina.addressLine2) {
            adreca += ', ' + oficina.addressLine2;
        }

        html += '<div class="oficina">';
        html += '  <div class="oficina-header">' + oficina.city + '</div>';
        html += '  <div class="oficina-body">';
        html += '    <div class="oficina-foto">';
        html += '      <img src="' + oficina.picture + '" alt="' + oficina.city + '">';
        html += '    </div>';
        html += '    <div class="oficina-info">';
        html += '      <table>';
        html += '        <tr><td><strong>Telèfon:</strong> ' + oficina.phone + '</td></tr>';
        html += '        <tr><td><strong>Direcció:</strong> ' + adreca + '</td></tr>';
        if (oficina.state) {
            html += '        <tr><td><strong>Estat:</strong> ' + oficina.state + '</td></tr>';
        }
        html += '        <tr><td><strong>País:</strong> ' + oficina.country + ' - ' + oficina.territory + '</td></tr>';
        html += '      </table>';
        html += '    </div>';
        html += '  </div>';
        html += '</div>';

    });

    document.getElementById('results').innerHTML = html;
}
