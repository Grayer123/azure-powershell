
function get_all_vm_locations
{
    $locations = Get-AzureLocation | where { $_.Name -like 'Microsoft.Compute/virtualMachines' } | select -ExpandProperty Locations;

    for ($i = 0; $i -lt $locations.Count; $i++)
    {
        $locations[$i] = ($locations[$i] -Replace ' ', '').ToLower();
    }

    return $locations;
}

