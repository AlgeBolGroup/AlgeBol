open hash, "hash.txt" or die $!;

while (<hash>) {
    my @line = split ' '; 
    
    $conv{@line[0]} = @line[1];
}

while (<>) {
    s/;+.*$//;

    # print ("\n*************\nnewline: $_\n************\n\n\n");

    my @line = split ' ';

    @memory[@line[0]] = $conv{@line[1]}.sprintf("%.2x", @line[2]);

    print ("@memory[@line[0]] ");
}
    
