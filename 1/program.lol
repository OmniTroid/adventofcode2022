HAI 1.2
BTW variable to store temporary sum
I HAS A temp_sum ITZ 0
BTW variable to store largest sum
I HAS A largest_sum ITZ 0
BTW not actually used
I HAS A loop_iterator ITZ 0
IM IN YR input_loop UPPIN YR loop_iterator
    I HAS A input
    GIMMEH input
    BTW Break loop if we reach the end marker
    BOTH SAEM input AN "end"
    O RLY?
        YA RLY, GTFO
    OIC

    BOTH SAEM input AN ""
    O RLY?
        YA RLY
            DIFFRINT temp_sum SMALLR OF temp_sum AN largest_sum
            O RLY?
                YA RLY, largest_sum R temp_sum
            OIC
            temp_sum R 0
        NO WAI
            MAEK input A NUMBR
            temp_sum R SUM OF temp_sum AN input
    OIC
IM OUTTA YR input_loop

VISIBLE largest_sum

KTHXBYE
