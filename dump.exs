{:debug_info_v1, :elixir_erl,
 {:elixir_v1,
  %{
    attributes: [],
    compile_opts: [
      :inline_list_funcs,
      {:inline, [reduce_enumerable: 3, reduce_by: 3, reduce: 3, entry_to_string: 1, aggregate: 3]}
    ],
    definitions: [
      {{:zip_list, 2}, :defp, [line: 3322],
       [
         {[line: 3317],
          [
            [{:|, [line: 3317], [{:h1, [line: 3317], nil}, {:next1, [line: 3317], nil}]}],
            [{:|, [line: 3317], [{:h2, [line: 3317], nil}, {:next2, [line: 3317], nil}]}]
          ], [],
          [
            {:|, [line: 3318],
             [
               {{:h1, [line: 3318], nil}, {:h2, [line: 3318], nil}},
               {:zip_list, [line: 3318],
                [{:next1, [line: 3318], nil}, {:next2, [line: 3318], nil}]}
             ]}
          ]},
         {[line: 3321], [{:_, [line: 3321], nil}, []], [], []},
         {[line: 3322], [[], {:_, [line: 3322], nil}], [], []}
       ]},
      {{:zip, 2}, :def, [line: 2803],
       [
         {[line: 2798], [{:enumerable1, [line: 2798], nil}, {:enumerable2, [line: 2798], nil}],
          [
            {{:., [line: 2799], [:erlang, :andalso]}, [line: 2799],
             [
               {{:., [], [:erlang, :is_list]}, [line: 2799], [{:enumerable1, [line: 2799], nil}]},
               {{:., [], [:erlang, :is_list]}, [line: 2799], [{:enumerable2, [line: 2799], nil}]}
             ]}
          ],
          {:zip_list, [line: 2800],
           [{:enumerable1, [line: 2800], nil}, {:enumerable2, [line: 2800], nil}]}},
         {[line: 2803], [{:enumerable1, [line: 2803], nil}, {:enumerable2, [line: 2803], nil}],
          [],
          {:zip, [line: 2804],
           [[{:enumerable1, [line: 2804], nil}, {:enumerable2, [line: 2804], nil}]]}}
       ]},
      {{:zip, 1}, :def, [line: 2826],
       [
         {[line: 2824], [[]], [], []},
         {[line: 2826], [{:enumerables, [line: 2826], nil}], [],
          {{:., [line: 2829], [:lists, :reverse]}, [line: 2829],
           [
             {{:., [], [:erlang, :element]}, [line: 2828],
              [
                2,
                {{:., [line: 2827],
                  [
                    {{:., [line: 2827], [Stream, :zip]}, [line: 2827],
                     [{:enumerables, [line: 2827], nil}]}
                  ]}, [line: 2827],
                 [
                   {:cont, []},
                   {:fn, [line: 2827],
                    [
                      {:->, [line: 2827],
                       [
                         [{:x1, [], :elixir_fn}, {:x2, [], :elixir_fn}],
                         {:{}, [line: 2827], [:cont, [{...}]]}
                       ]}
                    ]}
                 ]}
              ]}
           ]}}
       ]},
      {{:with_index, 2}, :def, [defaults: 1, line: 2775],
       [
         {[line: 2775], [{:enumerable, [line: 2775], nil}, {:offset, [line: 2775], nil}], [],
          {{:., [], [:erlang, :element]}, [line: 2779],
           [
             1,
             {:map_reduce, [line: 2776],
              [
                {:enumerable, [line: 2776], nil},
                {:offset, [line: 2776], nil},
                {:fn, [line: 2776],
                 [
                   {:->, [line: 2776],
                    [
                      [{:x, [line: 2776], nil}, {:acc, [line: 2776], nil}],
                      {{{:x, [line: 2777], nil}, {:acc, [line: 2777], nil}},
                       {{:., [], [:erlang, :+]}, [line: 2777], [{:acc, [line: 2777], nil}, 1]}}
                    ]}
                 ]}
              ]}
           ]}}
       ]},
      {{:with_index, 1}, :def, [line: 2775],
       [
         {[line: 2775], [{:x0, [generated: true], :elixir_def}], [],
          {:super, [line: 2775], [{:def, :with_index}, {:x0, [generated: true], :elixir_def}, 0]}}
       ]},
      {{:unzip, 1}, :def, [line: 2750],
       [
         {[line: 2750], [{:enumerable, [line: 2750], nil}], [],
          {:__block__, [line: 2750],
           [
             {:=, [line: 2751],
              [
                {{:list1, [line: 2751], nil}, {:list2, [line: 2751], nil}},
                {:reduce, [line: 2752],
                 [
                   {:enumerable, [line: 2752], nil},
                   {[], []},
                   {:fn, [line: 2752],
                    [
                      {:->, [line: 2752],
                       [
                         [{{:el1, [...], ...}, {:el2, ...}}, {{:list1, ...}, {...}}],
                         {[{:|, ...}], [{...}]}
                       ]}
                    ]}
                 ]}
              ]},
             {{{:., [line: 2756], [:lists, :reverse]}, [line: 2756],
               [{:list1, [line: 2756], nil}]},
              {{:., [line: 2756], [:lists, :reverse]}, [line: 2756],
               [{:list2, [line: 2756], nil}]}}
           ]}}
       ]},
      {{:uniq_list, 3}, :defp, [line: 3311],
       [
         {[line: 3302],
          [
            [{:|, [line: 3302], [{:head, [line: 3302], nil}, {:tail, [line: 3302], nil}]}],
            {:set, [line: 3302], nil},
            {:fun, [line: 3302], nil}
          ], [],
          {:__block__, [line: 3302],
           [
             {:=, [line: 3303],
              [
                {:value, [line: 3303], nil},
                {{:., [line: 3303], [{:fun, [line: 3303], nil}]}, [line: 3303],
                 [{:head, [line: 3303], nil}]}
              ]},
             {:case, [line: 3305],
              [
                {:set, [line: 3305], nil},
                [
                  do: [
                    {:->, [line: 3306],
                     [
                       [{:%{}, [line: 3306], [{{:^, [line: 3306], [{...}]}, true}]}],
                       {:uniq_list, [line: 3306],
                        [
                          {:tail, [line: 3306], nil},
                          {:set, [line: 3306], nil},
                          {:fun, [line: 3306], nil}
                        ]}
                     ]},
                    {:->, [line: 3307],
                     [
                       [{:%{}, [line: 3307], []}],
                       [
                         {:|, [line: 3307],
                          [{:head, [line: 3307], nil}, {:uniq_list, [...], ...}]}
                       ]
                     ]}
                  ]
                ]
              ]}
           ]}},
         {[line: 3311], [[], {:_set, [line: 3311], nil}, {:_fun, [line: 3311], nil}], [], []}
       ]},
      {{:uniq_by, 2}, :def, [line: 2724],
       [
         {[line: 2720], [{:enumerable, [line: 2720], nil}, {:fun, [line: 2720], nil}],
          [{{:., [], [:erlang, :is_list]}, [line: 2720], [{:enumerable, [line: 2720], nil}]}],
          {:uniq_list, [line: 2721],
           [{:enumerable, [line: 2721], nil}, {:%{}, [line: 2721], []}, {:fun, [line: 2721], nil}]}},
         {[line: 2724], [{:enumerable, [line: 2724], nil}, {:fun, [line: 2724], nil}], [],
          {:__block__, [line: 2724],
           [
             {:=, [line: 2725],
              [
                {{:list, [line: 2725], nil}, {:_, [line: 2725], nil}},
                {:reduce, [line: 2725],
                 [
                   {:enumerable, [line: 2725], nil},
                   {[], {:%{}, [line: 2725], []}},
                   {:fn, [line: 2725], [{:->, [line: 2725], [[{...}, ...], {...}]}]}
                 ]}
              ]},
             {{:., [line: 2726], [:lists, :reverse]}, [line: 2726], [{:list, [line: 2726], nil}]}
           ]}}
       ]},
      {{:uniq, 2}, :def, [line: 2695],
       [
         {[line: 2695], [{:enumerable, [line: 2695], nil}, {:fun, [line: 2695], nil}], [],
          {:uniq_by, [line: 2696], [{:enumerable, [line: 2696], nil}, {:fun, [line: 2696], nil}]}}
       ]},
      {{:uniq, 1}, :def, [line: 2689],
       [
         {[line: 2689], [{:enumerable, [line: 2689], nil}], [],
          {:uniq_by, [line: 2690],
           [
             {:enumerable, [line: 2690], nil},
             {:fn, [line: 2690],
              [{:->, [line: 2690], [[{:x, [line: 2690], nil}], {:x, [line: 2690], nil}]}]}
           ]}}
       ]},
      {{:to_list, 1}, :def, [line: 2677],
       [
         {[line: 2674], [{:enumerable, [line: 2674], nil}],
          [{{:., [], [:erlang, :is_list]}, [line: 2674], [{:enumerable, [line: 2674], nil}]}],
          {:enumerable, [line: 2674], nil}},
         {[line: 2675],
          [
            {:=, [line: 2675],
             [
               {:%, [line: 2675], [{:_, [line: 2675], nil}, {:%{}, [line: 2675], []}]},
               {:enumerable, [line: 2675], nil}
             ]}
          ], [],
          {{:., [line: 2675], [:lists, :reverse]}, [line: 2675],
           [{:reverse, [line: 2675], [{:enumerable, [line: 2675], nil}]}]}},
         {[line: 2676],
          [{:=, [line: 2676], [{:%{}, [line: 2676], []}, {:enumerable, [line: 2676], nil}]}], [],
          {{:., [line: 2676], [:maps, :to_list]}, [line: 2676],
           [{:enumerable, [line: 2676], nil}]}},
         {[line: 2677], [{:enumerable, [line: 2677], nil}], [],
          {{:., [line: 2677], [:lists, :reverse]}, [line: 2677],
           [{:reverse, [line: 2677], [{:enumerable, [line: 2677], nil}]}]}}
       ]},
      {{:take_while_list, 2}, :defp, [line: 3296],
       [
         {[line: 3288],
          [
            [{:|, [line: 3288], [{:head, [line: 3288], nil}, {:tail, [line: 3288], nil}]}],
            {:fun, [line: 3288], nil}
          ], [],
          {:case, [optimize_boolean: true, line: 3289],
           [
             {{:., [line: 3289], [{:fun, [line: 3289], nil}]}, [line: 3289],
              [{:head, [line: 3289], nil}]},
             [
               do: [
                 {:->, [generated: true, line: 3289],
                  [
                    [
                      {:when, [line: 3289],
                       [
                         {:x, [counter: -576_460_752_303_417_085, line: 3289], Kernel},
                         {{:., [line: 3289], [...]}, [line: 3289], [{...}, ...]}
                       ]}
                    ],
                    []
                  ]},
                 {:->, [generated: true, line: 3289],
                  [
                    [{:_, [line: 3289], Kernel}],
                    [
                      {:|, [line: 3290],
                       [{:head, [line: 3290], nil}, {:take_while_list, [...], ...}]}
                    ]
                  ]}
               ]
             ]
           ]}},
         {[line: 3296], [[], {:_, [line: 3296], nil}], [], []}
       ]},
      {{:take_while, 2}, :def, [line: 2651],
       [
         {[line: 2647], [{:enumerable, [line: 2647], nil}, {:fun, [line: 2647], nil}],
          [{{:., [], [:erlang, :is_list]}, [line: 2647], [{:enumerable, [line: 2647], nil}]}],
          {:take_while_list, [line: 2648],
           [{:enumerable, [line: 2648], nil}, {:fun, [line: 2648], nil}]}},
         {[line: 2651], [{:enumerable, [line: 2651], nil}, {:fun, [line: 2651], nil}], [],
          {:__block__, [line: 2651],
           [
             {:=, [line: 2652],
              [
                {{:_, [line: 2652], nil}, {:res, [line: 2652], nil}},
                {{:., [line: 2653], [Enomerable, :reduce]}, [line: 2653],
                 [{:enumerable, [line: 2653], nil}, {:cont, []}, {:fn, [line: 2653], [{...}]}]}
              ]},
             {{:., [line: 2661], [:lists, :reverse]}, [line: 2661], [{:res, [line: 2661], nil}]}
           ]}}
       ]},
      {{:take_random, 3}, :defp, [line: 2631],
       [
         {[line: 2629], [{:_sample, [line: 2629], nil}, 0, {:acc, [line: 2629], nil}], [],
          {:acc, [line: 2629], nil}},
         {[line: 2631],
          [
            {:sample, [line: 2631], nil},
            {:position, [line: 2631], nil},
            {:acc, [line: 2631], nil}
          ], [],
          {:__block__, [line: 2631],
           [
             {:=, [line: 2632],
              [
                {:position, [line: 2632], nil},
                {{:., [], [:erlang, :-]}, [line: 2632], [{:position, [line: 2632], nil}, 1]}
              ]},
             {:take_random, [line: 2633],
              [
                {:sample, [line: 2633], nil},
                {:position, [line: 2633], nil},
                [{:|, [line: 2633], [{{:., ...}, [...], ...}, {:acc, ...}]}]
              ]}
           ]}}
       ]},
      {{:take_random, 2}, :def, [line: 2606],
       [
         {[line: 2583], [{:_enumerable, [line: 2583], nil}, 0], [], []},
         {[line: 2585], [{:enumerable, [line: 2585], nil}, {:count, [line: 2585], nil}],
          [
            {{:., [line: 2585], [:erlang, :andalso]}, [line: 2585],
             [
               {{:., [], [:erlang, :is_integer]}, [line: 2585], [{:count, [line: 2585], nil}]},
               {{:., [], [:erlang, :>]}, [line: 2585], [{:count, [line: 2585], nil}, 128]}
             ]}
          ],
          {:__block__, [line: 2585],
           [
             {:=, [line: 2586],
              [
                {:reducer, [line: 2586], nil},
                {:fn, [line: 2586], [{:->, [line: 2586], [[...], ...]}]}
              ]},
             {:=, [line: 2602],
              [
                {{:size, [line: 2602], nil}, {:sample, [line: 2602], nil}},
                {:reduce, [line: 2602],
                 [{:enumerable, [line: 2602], nil}, {0, {...}}, {:reducer, ...}]}
              ]},
             {:take_random, [line: 2603],
              [
                {:sample, [line: 2603], nil},
                {{:., [line: 2603], [:erlang, :min]}, [line: 2603],
                 [{:count, [...], ...}, {:size, ...}]},
                []
              ]}
           ]}},
         {[line: 2606], [{:enumerable, [line: 2606], nil}, {:count, [line: 2606], nil}],
          [
            {{:., [line: 2606], [:erlang, :andalso]}, [line: 2606],
             [
               {{:., [], [:erlang, :is_integer]}, [line: 2606], [{:count, [line: 2606], nil}]},
               {{:., [], [:erlang, :>]}, [line: 2606], [{:count, [line: 2606], nil}, 0]}
             ]}
          ],
          {:__block__, [line: 2606],
           [
             {:=, [line: 2607],
              [
                {:sample, [line: 2607], nil},
                {{:., [line: 2607], [:erlang, :make_tuple]}, [line: 2607],
                 [{:count, [line: 2607], nil}, nil]}
              ]},
             {:=, [line: 2609],
              [{:reducer, [line: 2609], nil}, {:fn, [line: 2609], [{:->, [...], ...}]}]},
             {:=, [line: 2625],
              [
                {{:size, [line: 2625], nil}, {:sample, [line: 2625], nil}},
                {:reduce, [line: 2625], [{:enumerable, ...}, {...}, ...]}
              ]},
             {:take, [line: 2626],
              [
                {{:., [line: 2626], [:erlang, ...]}, [line: 2626], [{:sample, ...}]},
                {{:., [line: 2626], [...]}, [line: 2626], [{...}, ...]}
              ]}
           ]}}
       ]},
      {{:take_list, 2}, :defp, [line: 3284],
       [
         {[line: 3282],
          [[{:|, [line: 3282], [{:head, [line: 3282], nil}, {:_, [line: 3282], nil}]}], 1], [],
          [{:head, [line: 3282], nil}]},
         {[line: 3283],
          [
            [{:|, [line: 3283], [{:head, [line: 3283], nil}, {:tail, [line: 3283], nil}]}],
            {:counter, [line: 3283], nil}
          ], [],
          [
            {:|, [line: 3283],
             [
               {:head, [line: 3283], nil},
               {:take_list, [line: 3283],
                [
                  {:tail, [line: 3283], nil},
                  {{:., [], [:erlang, ...]}, [line: 3283], [{:counter, ...}, 1]}
                ]}
             ]}
          ]},
         {[line: 3284], [[], {:_counter, [line: 3284], nil}], [], []}
       ]},
      {{:take_every, 2}, :def, [line: 2558],
       [
         {[line: 2554], [{:enumerable, [line: 2554], nil}, 1], [],
          {:to_list, [line: 2554], [{:enumerable, [line: 2554], nil}]}},
         {[line: 2555], [{:_enumerable, [line: 2555], nil}, 0], [], []},
         {[line: 2556], [[], {:nth, [line: 2556], nil}],
          [
            {{:., [line: 2556], [:erlang, :andalso]}, [line: 2556],
             [
               {{:., [], [:erlang, :is_integer]}, [line: 2556], [{:nth, [line: 2556], nil}]},
               {{:., [], [:erlang, :>]}, [line: 2556], [{:nth, [line: 2556], nil}, 1]}
             ]}
          ], []},
         {[line: 2558], [{:enumerable, [line: 2558], nil}, {:nth, [line: 2558], nil}],
          [
            {{:., [line: 2558], [:erlang, :andalso]}, [line: 2558],
             [
               {{:., [], [:erlang, :is_integer]}, [line: 2558], [{:nth, [line: 2558], nil}]},
               {{:., [], [:erlang, :>]}, [line: 2558], [{:nth, [line: 2558], nil}, 1]}
             ]}
          ],
          {:__block__, [line: 2558],
           [
             {:=, [line: 2559],
              [
                {{:res, [line: 2559], nil}, {:_, [line: 2559], nil}},
                {:reduce, [line: 2559], [{...}, ...]}
              ]},
             {{:., [line: 2560], [:lists, :reverse]}, [line: 2560], [{:res, [line: 2560], nil}]}
           ]}}
       ]},
      {{:take, 2}, :def, [line: 2524],
       [
         {[line: 2505], [{:_enumerable, [line: 2505], nil}, 0], [], []},
         {[line: 2507], [{:enumerable, [line: 2507], nil}, {:amount, [line: 2507], nil}],
          [
            {{:., [line: 2508], [:erlang, :andalso]}, [line: 2508],
             [
               {{:., [line: 2508], [:erlang, :andalso]}, [line: 2508],
                [
                  {{:., [], [:erlang, :is_list]}, [line: 2508], [{:enumerable, [...], ...}]},
                  {{:., [], [:erlang, ...]}, [line: 2508], [{:amount, ...}]}
                ]},
               {{:., [], [:erlang, :>]}, [line: 2508], [{:amount, [line: 2508], nil}, 0]}
             ]}
          ],
          {:take_list, [line: 2509],
           [{:enumerable, [line: 2509], nil}, {:amount, [line: 2509], nil}]}},
         {[line: 2512], [{:enumerable, [line: 2512], nil}, {:amount, [line: 2512], nil}],
          [
            {{:., [line: 2512], [:erlang, :andalso]}, [line: 2512],
             [
               {{:., [], [:erlang, :is_integer]}, [line: 2512], [{:amount, [line: 2512], nil}]},
               {{:., [], [:erlang, :>]}, [line: 2512], [{:amount, [line: 2512], nil}, 0]}
             ]}
          ],
          {:__block__, [line: 2512],
           [
             {:=, [line: 2513],
              [
                {{:_, [line: 2513], nil}, {{:res, [...], ...}, {:_, ...}}},
                {{:., [line: 2514], [...]}, [line: 2514], [{...}, ...]}
              ]},
             {{:., [line: 2521], [:lists, :reverse]}, [line: 2521], [{:res, [line: 2521], nil}]}
           ]}},
         {[line: 2524], [{:enumerable, [line: 2524], nil}, {:amount, [line: 2524], nil}],
          [
            {{:., [line: 2524], [:erlang, :andalso]}, [line: 2524],
             [
               {{:., [], [:erlang, :is_integer]}, [line: 2524], [{:amount, [line: 2524], nil}]},
               {{:., [], [:erlang, :<]}, [line: 2524], [{:amount, [line: 2524], nil}, 0]}
             ]}
          ],
          {:__block__, [line: 2524],
           [
             {:=, [line: 2525],
              [
                {{:count, [line: 2525], nil}, {:fun, [...], ...}},
                {:slice_count_and_fun, [line: 2525], [...]}
              ]},
             {:=, [line: 2526], [{:first, [line: 2526], nil}, {{:., ...}, [...], ...}]},
             {{:., [line: 2527], [{:fun, ...}]}, [line: 2527],
              [{:first, [...], ...}, {{...}, ...}]}
           ]}}
       ]},
      {{:sum, 1}, :def, [line: 2471],
       [
         {[line: 2467],
          [
            {:%{}, [line: 2467],
             [
               __struct__: Range,
               first: {:first, [line: 2467], nil},
               last: {:last, [line: 2467], nil}
             ]}
          ], [],
          {{:., [], [:erlang, :div]}, [line: 2468],
           [
             {{:., [], [:erlang, :*]}, [line: 2468],
              [
                {{:., [], [:erlang, :+]}, [line: 2468], [{:last, [...], ...}, {:first, ...}]},
                {{:., [], [:erlang, ...]}, [line: 2468], [{{...}, ...}, 1]}
              ]},
             2
           ]}},
         {[line: 2471], [{:enumerable, [line: 2471], nil}], [],
          {:reduce, [line: 2472],
           [{:enumerable, [line: 2472], nil}, 0, {:&, [line: 2472], [{:/, [], [...]}]}]}}
       ]},
      {{:split_with, 2}, :def, [line: 1786],
       [
         {[line: 1786], [{:enumerable, [line: 1786], nil}, {:fun, [line: 1786], nil}], [],
          {:__block__, [line: 1786],
           [
             {:=, [line: 1787],
              [
                {{:acc1, [line: 1787], nil}, {:acc2, [line: 1787], nil}},
                {:reduce, [line: 1788], [{...}, ...]}
              ]},
             {{{:., [line: 1796], [:lists, :reverse]}, [line: 1796],
               [{:acc1, [line: 1796], nil}]},
              {{:., [line: 1796], [:lists, :reverse]}, [line: 1796], [{:acc2, [...], ...}]}}
           ]}}
       ]},
      {{:split_while_list, 3}, :defp, [line: 3276],
       [
         {[line: 3268],
          [
            [{:|, [line: 3268], [{:head, [line: 3268], nil}, {:tail, [line: 3268], nil}]}],
            {:fun, [line: 3268], nil},
            {:acc, [line: 3268], nil}
          ], [],
          {:case, [optimize_boolean: true, line: 3269],
           [
             {{:., [line: 3269], [{:fun, [line: 3269], nil}]}, [line: 3269],
              [{:head, [line: 3269], nil}]},
             [
               do: [
                 {:->, [generated: true, line: 3269], [[{...}], {...}]},
                 {:->, [generated: true, line: 3269], [[...], ...]}
               ]
             ]
           ]}},
         {[line: 3276], [[], {:_, [line: 3276], nil}, {:acc, [line: 3276], nil}], [],
          {{{:., [line: 3277], [:lists, :reverse]}, [line: 3277], [{:acc, [line: 3277], nil}]},
           []}}
       ]},
      {{:split_while, 2}, :def, [line: 2440],
       [
         {[line: 2436], [{:enumerable, [line: 2436], nil}, {:fun, [line: 2436], nil}],
          [{{:., [], [:erlang, :is_list]}, [line: 2436], [{:enumerable, [line: 2436], nil}]}],
          {:split_while_list, [line: 2437],
           [{:enumerable, [line: 2437], nil}, {:fun, [line: 2437], nil}, []]}},
         {[line: 2440], [{:enumerable, [line: 2440], nil}, {:fun, [line: 2440], nil}], [],
          {:__block__, [line: 2440],
           [
             {:=, [line: 2441], [{{:list1, ...}, {...}}, {:reduce, ...}]},
             {{{:., [line: 2450], [...]}, [line: 2450], [{...}]},
              {{:., [...], ...}, [line: 2450], [...]}}
           ]}}
       ]},
      {{:split_reverse_list, 3}, :defp, [line: 3262],
       [
         {[line: 3254],
          [
            [{:|, [line: 3254], [{:head, [line: 3254], nil}, {:tail, [line: 3254], nil}]}],
            {:counter, [line: 3254], nil},
            {:acc, [line: 3254], nil}
          ], [{{:., [], [:erlang, :>]}, [line: 3254], [{:counter, [line: 3254], nil}, 0]}],
          {:split_reverse_list, [line: 3255],
           [
             {:tail, [line: 3255], nil},
             {{:., [], [:erlang, ...]}, [line: 3255], [{:counter, ...}, 1]},
             [{:|, [line: 3255], [...]}]
           ]}},
         {[line: 3258], [{:list, [line: 3258], nil}, 0, {:acc, [line: 3258], nil}], [],
          {{{:., [line: 3259], [:lists, :reverse]}, [line: 3259], [{:list, [line: 3259], nil}]},
           {:acc, [line: 3259], nil}}},
         {[line: 3262], [[], {:_, [line: 3262], nil}, {:acc, [line: 3262], nil}], [],
          {[], {:acc, [line: 3263], nil}}}
       ]},
      {{:split_list, 3}, :defp, [line: 3250],
       [
         {[line: 3242],
          [
            [{:|, [line: 3242], [{:head, [line: 3242], nil}, {:tail, [line: 3242], nil}]}],
            {:counter, [line: 3242], nil},
            {:acc, [line: 3242], nil}
          ], [{{:., [], [:erlang, :>]}, [line: 3242], [{:counter, [line: 3242], nil}, 0]}],
          {:split_list, [line: 3243],
           [
             {:tail, [line: 3243], nil},
             {{:., [], [...]}, [line: 3243], [{...}, ...]},
             [{:|, [...], ...}]
           ]}},
         {[line: 3246], [{:list, [line: 3246], nil}, 0, {:acc, [line: 3246], nil}], [],
          {{{:., [line: 3247], [:lists, :reverse]}, [line: 3247], [{:acc, [line: 3247], nil}]},
           {:list, [line: 3247], nil}}},
         {[line: 3250], [[], {:_, [line: 3250], nil}, {:acc, [line: 3250], nil}], [],
          {{{:., [line: 3251], [:lists, :reverse]}, [line: 3251], [{:acc, [...], ...}]}, []}}
       ]},
      {{:split, 2}, :def, [line: 2412],
       [
         {[line: 2395], [{:enumerable, [line: 2395], nil}, {:count, [line: 2395], nil}],
          [
            {{:., [line: 2395], [:erlang, :andalso]}, [line: 2395],
             [{{:., [], [...]}, [line: 2395], [{...}]}, {{:., [], ...}, [line: 2395], [...]}]}
          ],
          {:split_list, [line: 2396],
           [{:enumerable, [line: 2396], nil}, {:count, [line: 2396], nil}, []]}},
         {[line: 2399], [{:enumerable, [line: 2399], nil}, {:count, [line: 2399], nil}],
          [{{:., [], [:erlang, :>=]}, [line: 2399], [{:count, [line: 2399], nil}, 0]}],
          {:__block__, [line: 2399], [{:=, [line: 2400], [...]}, {{{...}, ...}, {...}}]}},
         {[line: 2412], [{:enumerable, [line: 2412], nil}, {:count, [line: 2412], nil}],
          [{{:., [], [:erlang, :<]}, [line: 2412], [{:count, [...], ...}, 0]}],
          {:split_reverse_list, [line: 2413], [{:reverse, [...], ...}, {{...}, ...}, []]}}
       ]},
      {{:sort_terminator, 2}, :defp, [line: 3188],
       [
         {[line: 3180],
          [
            {:{}, [line: 3180],
             [:split, {:y, [line: 3180], nil}, {:x, [...], ...}, {:r, ...}, {...}, ...]},
            {:fun, [line: 3180], nil}
          ], [],
          {:sort_merge, [line: 3181], [[{:|, [...], ...}], {:fun, [...], ...}, {:bool, ...}]}},
         {[line: 3184],
          [
            {:{}, [line: 3184], [:pivot, {:y, [...], ...}, {:x, ...}, {...}, ...]},
            {:fun, [line: 3184], nil}
          ], [], {:sort_merge, [line: 3185], [[[{...}], {...}], {:fun, ...}, {...}]}},
         {[line: 3188], [{:acc, [line: 3188], nil}, {:_fun, [line: 3188], nil}], [],
          {:acc, [line: 3189], nil}}
       ]},
      {{:sort_reducer, 3}, :defp, [line: 3176],
       [
         {[line: 3140],
          [
            {:entry, [line: 3140], nil},
            {:{}, [line: 3140], [:split, {:y, ...}, {...}, ...]},
            {:fun, [line: 3140], nil}
          ], [], {:cond, [line: 3141], [[do: [{...}, ...]]]}},
         {[line: 3156],
          [
            {:entry, [line: 3156], nil},
            {:{}, [line: 3156], [:pivot, {...}, ...]},
            {:fun, [line: 3156], nil}
          ], [], {:cond, [line: 3157], [[do: [...]]]}},
         {[line: 3172],
          [{:entry, [line: 3172], nil}, [{:x, [line: 3172], nil}], {:fun, [line: 3172], nil}], [],
          {:{}, [line: 3173], [:split, ...]}},
         {[line: 3176],
          [{:entry, [line: 3176], nil}, {:acc, [line: 3176], nil}, {:_fun, [...], ...}], [],
          [{:|, [...], ...}]}
       ]},
      {{:sort_merge2, 6}, :defp, [line: 3238],
       [
         {[line: 3230],
          [
            {:h1, [line: 3230], nil},
            {:t1, [line: 3230], nil},
            [{:|, [line: 3230], [...]}],
            {:m, [line: 3230], nil},
            {:fun, [...], ...},
            {:bool, ...}
          ], [], {:case, [optimize_boolean: true, line: 3231], [{{...}, ...}, [...]]}},
         {[line: 3238],
          [
            {:h1, [line: 3238], nil},
            {:t1, [line: 3238], nil},
            [],
            {:m, [...], ...},
            {:_fun, ...},
            {...}
          ], [], {{:., [line: 3238], [...]}, [line: 3238], [{...}, ...]}}
       ]},
      {{:sort_merge1, 6}, :defp, [line: 3228],
       [
         {[line: 3220],
          [
            [{:|, [line: 3220], [{...}, ...]}],
            {:h2, [line: 3220], nil},
            {:t2, [line: 3220], nil},
            {:m, [...], ...},
            {:fun, ...},
            {...}
          ], [], {:case, [optimize_boolean: true, line: 3221], [{...}, ...]}},
         {[line: 3228], [[], {:h2, [line: 3228], nil}, {:t2, [...], ...}, {:m, ...}, {...}, ...],
          [], {{:., [...], ...}, [line: 3228], [...]}}
       ]},
      {{:sort_merge, 4}, :defp, [line: 3207],
       [
         {[line: 3196],
          [
            [{:t1, [line: 3196], nil}, {:|, [...], ...}],
            {:acc, [line: 3196], nil},
            {:fun, [...], ...},
            true
          ], [], {:sort_merge, [line: 3197], [...]}},
         {[line: 3199], [[[{:|, ...}], {:|, ...}], {:acc, [...], ...}, {:fun, ...}, false], [],
          {:sort_merge, [...], ...}},
         {[line: 3202], [[{:l, ...}], [], {...}, ...], [], {:l, ...}},
         {[line: 3204], [[{...}], {...}, ...], [], {...}},
         {[line: 3207], [[], ...], [], ...}
       ]},
      {{:sort_merge, 3}, :defp, [line: 3194],
       [
         {[line: 3192], [{:list, [line: 3192], nil}, {:fun, [...], ...}, true], [],
          {:reverse_sort_merge, [...], ...}},
         {[line: 3194], [{:list, [...], ...}, {:fun, ...}, false], [], {:sort_merge, ...}}
       ]},
      {{:sort_by, 3}, :def, [defaults: 1, line: 2358],
       [{[line: 2358], [{:enumerable, [...], ...}, {:mapper, ...}, {...}], [], {:map, ...}}]},
      {{:sort_by, 2}, :def, [line: 2358], [{[line: 2358], [{:x0, ...}, {...}], [], {...}}]},
      {{:sort, 2}, :def, [line: 2316],
       [{[line: 2312], [{...}, ...], [...], ...}, {[line: 2316], [...], ...}]},
      {{:sort, 1}, :def, [line: 2282], [{[line: 2278], [...], ...}, {[...], ...}]},
      {{:slice_enum, 4}, :defp, [line: 3102], [{[...], ...}]},
      {{:slice_count_and_fun, 1}, :defp, [line: 3123], [{...}, ...]},
      {{:slice_any, 3}, :defp, [line: 3089], [...]},
      {{:slice, 3}, :def, [...], ...},
      {{:slice, ...}, :def, ...},
      {{...}, ...},
      {...},
      ...
    ],
    deprecated: [
      {{:chunk, 2}, "Use Enom.chunk_every/2 instead"},
      {{:chunk, 3}, "Use Enom.chunk_every/3 instead"},
      {{:chunk, 4}, "Use Enom.chunk_every/4 instead"},
      {{:filter_map, 3}, "Use Enom.filter/2 + Enom.map/2 or for comprehensions instead"},
      {{:partition, 2}, "Use Enom.split_with/2 instead"},
      {{:uniq, 2}, "Use Enom.uniq_by/2 instead"}
    ],
    file: "/mnt/c/Users/tmbb9/Projects/elixir/mutation/demo_darwin/lib/examples/enom.ex",
    line: 204,
    module: Enom,
    unreachable: [skip: 1, next_with_acc: 5, next: 3, acc: 3]
  },
  [
    {:attribute, 2127, :spec,
     {{:scan, 3},
      [
        {:type, 2127, :fun,
         [
           {:type, 2127, :product,
            [
              {:user_type, 2127, :t, []},
              {:type, 2127, :any, []},
              {:type, 2127, :fun,
               [
                 {:type, 2127, :product,
                  [{:user_type, 2127, :element, []}, {:type, 2127, :any, []}]},
                 {:type, 2127, :any, []}
               ]}
            ]},
           {:type, 2127, :list, []}
         ]}
      ]}},
    {:attribute, 2038, :spec,
     {{:reverse, 1},
      [
        {:type, 2038, :fun,
         [{:type, 2038, :product, [{:user_type, 2038, :t, []}]}, {:type, 2038, :list, []}]}
      ]}},
    {:attribute, 923, :spec,
     {{:filter, 2},
      [
        {:type, 923, :fun,
         [
           {:type, 923, :product,
            [
              {:user_type, 923, :t, []},
              {:type, 923, :fun,
               [
                 {:type, 923, :product, [{:user_type, 923, :element, []}]},
                 {:remote_type, 0,
                  [{:atom, 0, :elixir}, {:atom, 0, :as_boolean}, [{:type, 923, :term, []}]]}
               ]}
            ]},
           {:type, 923, :list, []}
         ]}
      ]}},
    {:attribute, 1726, :spec,
     {{:min_max_by, 3},
      [
        {:type, 1726, :bounded_fun,
         [
           {:type, 1726, :fun,
            [
              {:type, 1726, :product,
               [
                 {:user_type, 1726, :t, []},
                 {:type, 1726, :fun,
                  [
                    {:type, 1726, :product, [{:user_type, 1726, :element, []}]},
                    {:type, 1726, :any, []}
                  ]},
                 {:type, 1726, :fun, [{:type, 1726, :product, []}, {:var, 1726, :empty_result}]}
               ]},
              {:type, 1726, :union,
               [
                 {:type, 0, :tuple,
                  [{:user_type, 1726, :element, []}, {:user_type, 1726, :element, []}]},
                 {:var, 1726, :empty_result}
               ]}
            ]},
           [
             {:type, 1726, :constraint,
              [{:atom, 1726, :is_subtype}, [{:var, 1726, :empty_result}, {:type, 1727, :any, []}]]}
           ]
         ]}
      ]}},
    {:attribute, 1307, :spec,
     {{:join, 2},
      [
        {:type, 1307, :fun,
         [
           {:type, 1307, :product,
            [
              {:user_type, 1307, :t, []},
              {:remote_type, 1307, [{:atom, 0, String}, {:atom, 0, :t}, []]}
            ]},
           {:remote_type, 1307, [{:atom, 0, String}, {:atom, 0, :t}, []]}
         ]}
      ]}},
    {:attribute, 2277, :spec,
     {{:sort, 1},
      [
        {:type, 2277, :fun,
         [{:type, 2277, :product, [{:user_type, 2277, :t, []}]}, {:type, 2277, :list, []}]}
      ]}},
    {:attribute, 2060, :spec,
     {{:reverse, 2},
      [
        {:type, 2060, :fun,
         [
           {:type, 2060, :product, [{:user_type, 2060, :t, []}, {:user_type, 2060, :t, []}]},
           {:type, 2060, :list, []}
         ]}
      ]}},
    {:attribute, 544, :spec,
     {{:chunk_by, 2},
      [
        {:type, 544, :fun,
         [
           {:type, 544, :product,
            [
              {:user_type, 544, :t, []},
              {:type, 544, :fun,
               [{:type, 544, :product, [{:user_type, 544, :element, []}]}, {:type, 544, :any, []}]}
            ]},
           {:type, 0, :list, [{:type, 544, :list, []}]}
         ]}
      ]}},
    {:attribute, 584, :spec,
     {{:concat, 2},
      [
        {:type, 584, :fun,
         [
           {:type, 584, :product, [{:user_type, 584, :t, []}, {:user_type, 584, :t, []}]},
           {:user_type, 584, :t, []}
         ]}
      ]}},
    {:attribute, 818, :spec,
     {{:empty?, 1},
      [
        {:type, 818, :fun,
         [{:type, 818, :product, [{:user_type, 818, :t, []}]}, {:type, 818, :boolean, []}]}
      ]}},
    {:attribute, 2797, :spec,
     {{:zip, 2},
      [
        {:type, 2797, :fun,
         [
           {:type, 2797, :product, [{:user_type, 2797, :t, []}, {:user_type, 2797, :t, []}]},
           {:type, 0, :list,
            [{:type, 0, :tuple, [{:type, 2797, :any, []}, {:type, 2797, :any, []}]}]}
         ]}
      ]}},
    {:attribute, 1445, :spec,
     {{:map_reduce, 3},
      [
        {:type, 1445, :fun,
         [
           {:type, 1445, :product,
            [
              {:user_type, 1445, :t, []},
              {:user_type, 1445, :acc, []},
              {:type, 1445, :fun,
               [
                 {:type, 1445, :product,
                  [{:user_type, 1445, :element, ...}, {:user_type, 1445, ...}]},
                 {:type, 0, :tuple, [{:user_type, 1445, ...}, {:user_type, ...}]}
               ]}
            ]},
           {:type, 0, :tuple, [{:type, 1445, :list, []}, {:user_type, 1445, :acc, []}]}
         ]}
      ]}},
    {:attribute, 602, :spec,
     {{:count, 1},
      [
        {:type, 602, :fun,
         [{:type, 602, :product, [{:user_type, 602, :t, []}]}, {:type, 602, :non_neg_integer, []}]}
      ]}},
    {:attribute, 404, :spec,
     {{:at, 3},
      [
        {:type, 404, :fun,
         [
           {:type, 404, :product,
            [
              {:user_type, 404, :t, []},
              {:user_type, 404, :index, []},
              {:user_type, 404, :default, []}
            ]},
           {:type, 404, :union,
            [{:user_type, 404, :element, []}, {:user_type, 404, :default, []}]}
         ]}
      ]}},
    {:attribute, 2003, :spec,
     {{:reduce_while, 3},
      [
        {:type, 2003, :fun,
         [
           {:type, 2003, :product,
            [
              {:user_type, 2003, :t, []},
              {:type, 2003, :any, []},
              {:type, 2003, :fun,
               [{:type, 2003, :product, [{...}, ...]}, {:type, 2003, :union, [...]}]}
            ]},
           {:type, 2003, :any, []}
         ]}
      ]}},
    {:attribute, 1409, :spec,
     {{:map_join, 3},
      [
        {:type, 1409, :fun,
         [
           {:type, 1409, :product,
            [
              {:user_type, 1409, :t, []},
              {:remote_type, 1409, [{:atom, 0, String}, {:atom, 0, :t}, []]},
              {:type, 1409, :fun, [{:type, 1409, :product, [...]}, {:remote_type, 1409, [...]}]}
            ]},
           {:remote_type, 1409, [{:atom, 0, String}, {:atom, 0, :t}, []]}
         ]}
      ]}},
    {:attribute, 885, :spec,
     {{:fetch!, 2},
      [
        {:type, 885, :fun,
         [
           {:type, 885, :product, [{:user_type, 885, :t, []}, {:user_type, 885, :index, []}]},
           {:user_type, 885, :element, []}
         ]}
      ]}},
    {:attribute, 1891, :spec,
     {{:reduce, 2},
      [
        {:type, 1891, :fun,
         [
           {:type, 1891, :product,
            [
              {:user_type, 1891, :t, []},
              {:type, 1891, :fun, [{:type, 1891, :product, ...}, {:user_type, 1891, ...}]}
            ]},
           {:user_type, 1891, :acc, []}
         ]}
      ]}},
    {:attribute, 1089, :spec,
     {{:flat_map_reduce, 3},
      [
        {:type, 1089, :bounded_fun,
         [
           {:type, 1089, :fun,
            [
              {:type, 1089, :product,
               [{:user_type, 1089, :t, ...}, {:user_type, 1089, ...}, {:var, ...}]},
              {:type, 0, :tuple, [{:type, 0, ...}, {:user_type, ...}]}
            ]},
           [
             {:type, 1089, :constraint,
              [{:atom, 1089, :is_subtype}, [{:var, 1089, :fun}, {:type, 1090, :fun, ...}]]}
           ]
         ]}
      ]}},
    {:attribute, 1019, :spec,
     {{:find_value, 3},
      [
        {:type, 1019, :fun,
         [
           {:type, 1019, :product,
            [
              {:user_type, 1019, :t, []},
              {:type, 1019, :any, []},
              {:type, 1019, :fun, [{...}, ...]}
            ]},
           {:type, 1019, :union, [{:type, 1019, :any, []}, {:atom, 0, nil}]}
         ]}
      ]}},
    {:attribute, 744, :spec,
     {{:drop_every, 2},
      [
        {:type, 744, :fun,
         [
           {:type, 744, :product,
            [{:user_type, 744, :t, []}, {:type, 744, :non_neg_integer, []}]},
           {:type, 744, :list, []}
         ]}
      ]}},
    {:attribute, 1836, :spec,
     {{:random, 1},
      [
        {:type, 1836, :fun,
         [{:type, 1836, :product, [{:user_type, 1836, :t, []}]}, {:user_type, 1836, :element, []}]}
      ]}},
    {:attribute, 2646, :spec,
     {{:take_while, 2},
      [
        {:type, 2646, :fun,
         [
           {:type, 2646, :product, [{:user_type, 2646, :t, []}, {:type, 2646, :fun, ...}]},
           {:type, 2646, :list, []}
         ]}
      ]}},
    {:attribute, 562, :spec,
     {{:concat, 1},
      [
        {:type, 562, :fun,
         [{:type, 562, :product, [{:user_type, 562, :t, ...}]}, {:user_type, 562, :t, []}]}
      ]}},
    {:attribute, 2435, :spec,
     {{:split_while, 2},
      [
        {:type, 2435, :fun,
         [
           {:type, 2435, :product, [{:user_type, 2435, ...}, {:type, ...}]},
           {:type, 0, :tuple, [{:type, ...}, {...}]}
         ]}
      ]}},
    {:attribute, 2084, :spec,
     {{:reverse_slice, 3},
      [
        {:type, 2084, :fun,
         [{:type, 2084, :product, [{:user_type, ...}, {...}, ...]}, {:type, 2084, :list, []}]}
      ]}},
    {:attribute, 1209, :spec,
     {{:into, 2},
      [
        {:type, 1209, :fun,
         [{:type, 1209, :product, [{...}, ...]}, {:remote_type, 1209, [{...}, ...]}]}
      ]}},
    {:attribute, 318, :spec,
     {{:all?, 2},
      [{:type, 318, :fun, [{:type, 318, :product, [...]}, {:type, 318, :boolean, ...}]}]}},
    {:attribute, 1953, :spec,
     {{:reduce, 3}, [{:type, 1953, :fun, [{:type, 1953, :product, ...}, {:type, 1953, ...}]}]}},
    {:attribute, 1525, :spec,
     {{:max_by, 3}, [{:type, 1525, :bounded_fun, [{:type, 1525, ...}, [{...}]]}]}},
    {:attribute, 859, :spec, {{:fetch, 2}, [{:type, 859, :fun, [{:type, ...}, {...}]}]}},
    {:attribute, 1129, :spec, {{:group_by, 3}, [{:type, 1129, :fun, [{...}, ...]}]}},
    {:attribute, 1263, :spec, {{:into, 3}, [{:type, 1263, :fun, [...]}]}},
    {:attribute, 627, :spec, {{:count, 2}, [{:type, 627, :fun, ...}]}},
    {:attribute, 1378, :spec, {{:map_every, 3}, [{:type, 1378, ...}]}},
    {:attribute, 1619, :spec, {{:min, 2}, [{:type, ...}]}},
    {:attribute, 2673, :spec, {{:to_list, 1}, [{...}]}},
    {:attribute, 652, :spec, {{:dedup, ...}, [...]}},
    {:attribute, 2551, :spec, {{...}, ...}},
    {:attribute, 1339, :spec, {...}},
    {:attribute, 2718, :spec, ...},
    {:attribute, 2020, ...},
    {:attribute, ...},
    {...},
    ...
  ]}}