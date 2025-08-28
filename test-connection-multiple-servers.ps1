# List of hosts to test
$servers = @('google.com', 'github.com', 'another.host.you.can.add')

foreach ($server in $servers) {
    $alive = Test-Connection -ComputerName $server -Count 1 -Quiet
    if ($alive) {
        Write-Output "$server is reachable."
    } else {
        Write-Output "$server is not reachable."
    }
}
