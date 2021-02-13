$doxydocs=
{
  classes => [
    {
      name => 'ahbsd::lib::ApiKey::ApiKeyEventArgs',
      kind => 'class',
      base => [
        {
          name => 'ahbsd.lib.EventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.ApiKey.IApiKeyEventArgs',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'ApiKeyEventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyEventArgs'
        },
        {
          name => 'ApiKeyEventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyEventArgs'
        },
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'Index',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyEventArgs'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'ApiKeyEventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with the API-Key and the index of the API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The API-Key.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'idx'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The index of the API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'apiKey',
                type => 'T'
              },
              {
                declaration_name => 'idx',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ApiKeyEventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with the API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'apiKey',
                type => 'T'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Index',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the index of the API-Key from the ApiKeyHolder<T>. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The index.'
                }
              ]
            },
            type => 'int?'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Specialized generic '
          },
          {
            type => 'url',
            link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
            content => 'EventArgs'
          },
          {
            type => 'text',
            content => ' for API-Keys. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Type of API-Key.'
                  }
                ]
              }
            ]
          },
          {
            see => [
              {
                type => 'text',
                content => 'ApiKeyHolder<T>'
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::ApiKey::ApiKeyHolder',
      kind => 'class',
      base => [
        {
          name => 'IEquatable< ApiKeyHolder< T >>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => '_apiKey',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'AddApiKey',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'ApiKey',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'ApiKeyHolder',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'ApiKeyHolder',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'ApiKeyHolder',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'FindApiKey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'GetApiKey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'GetHashCode',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'KnownApiKeys',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'OnApiKeyAdded',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'operator!=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'operator==',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'ApiKeyHolder',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a given API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'apiKey',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ApiKeyHolder',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor without parameters. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'If before an object was created, the last API-Key will be used. Otherwise the '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'default of T will be used.'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'ArgumentNullException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If '
                        },
                        {
                          type => 'url',
                          link => 'df/dbe/classahbsd_1_1lib_1_1ApiKey_1_1ApiKeyHolder_1a3854042eb7d1011032e39f2fb0cc5988',
                          content => 'KnownApiKeys'
                        },
                        {
                          type => 'text',
                          content => ' is '
                        },
                        {
                          type => 'style',
                          style => 'code',
                          enable => 'yes'
                        },
                        {
                          type => 'text',
                          content => 'null'
                        },
                        {
                          type => 'style',
                          style => 'code',
                          enable => 'no'
                        },
                        {
                          type => 'text',
                          content => ' or something similar.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'InvalidOperationException'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'If anything regarding '
                        },
                        {
                          type => 'url',
                          link => 'df/dbe/classahbsd_1_1lib_1_1ApiKey_1_1ApiKeyHolder_1a3854042eb7d1011032e39f2fb0cc5988',
                          content => 'KnownApiKeys'
                        },
                        {
                          type => 'text',
                          content => ' is an invalid operation.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Equals',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Find out, if this object equals another given object. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'obj'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The other object.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'If both objects equals '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ', otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'override bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'obj',
                type => 'object'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetHashCode',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the HashCode. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The HashCode.'
                    }
                  ]
                }
              ]
            },
            type => 'override int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Equals',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Find out, if this object equals another given object. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'other'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The other object.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'If both objects equals '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ', otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'other',
                type => 'ApiKeyHolder< T >'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'ApiKey',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The API-Key.'
                }
              ]
            },
            type => 'T'
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'FindApiKey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Looks for a given API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given API-Key.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'If found it returns the index, if not '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'null'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' is returned.'
                    }
                  ]
                }
              ]
            },
            type => 'static ? int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'apiKey',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetApiKey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Returns an API-Key from a defined index number. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'idx'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The defined index number.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'An API-Key.'
                    }
                  ]
                }
              ]
            },
            type => 'static T',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'idx',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator==',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Find out if two objects equals. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'left'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The object on the left side.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'right'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The object on the right side.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'If both objects equals '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ', otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'left',
                type => 'ApiKeyHolder< T >'
              },
              {
                declaration_name => 'right',
                type => 'ApiKeyHolder< T >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator!=',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Find out if two objects do not equals. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'left'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The object on the left side.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'right'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The object on the right side.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'If both objects do not equals '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ', otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'left',
                type => 'ApiKeyHolder< T >'
              },
              {
                declaration_name => 'right',
                type => 'ApiKeyHolder< T >'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_apiKey',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'readonly T'
          }
        ]
      },
      private_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'ApiKeyHolder',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Static constructor. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'static',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'AddApiKey',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Functionality when a new API-Key was added. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Sending Object'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'New API-Key'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'apiKey',
                type => 'T'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Class for generic API-Keys. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Type of API-Key'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::ChangeEventArgs',
      kind => 'class',
      base => [
        {
          name => 'ahbsd.lib.EventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.IChangeEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IEquatable< IChangeEventArgs< T >>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'ChangeEventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'ChangeEventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'ChangeEventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'GetHashCode',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'NewValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'OldValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'operator!=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'operator==',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'SetNewValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'ChangeEventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor without any parameters. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'ChangeEventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with the old and the new value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'oldValue'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The old value.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'newValue'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The new value.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'oldValue',
                type => 'T'
              },
              {
                declaration_name => 'newValue',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ChangeEventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with the old value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'oldValue'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The old value.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'oldValue',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SetNewValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Sets the new value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'newValue'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The new value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'Exception'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the '
                        },
                        {
                          type => 'url',
                          link => 'd3/d13/classahbsd_1_1lib_1_1ChangeEventArgs_1a33cab8e1233fa83ee04499a34f52aeb7',
                          content => 'NewValue'
                        },
                        {
                          type => 'text',
                          content => ' was already set.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'newValue',
                type => 'T'
              }
            ],
            reimplements => {
              name => 'SetNewValue'
            }
          },
          {
            kind => 'function',
            name => 'ToString',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets a string representation of the changed value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A string representation of the changed value.'
                    }
                  ]
                }
              ]
            },
            type => 'override string',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplements => {
              name => 'ToString'
            }
          },
          {
            kind => 'function',
            name => 'Equals',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Finds out wheather an other object of type IChangeEventArgs<T> equals this object. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'other'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The other object.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the other object equals this object, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'other',
                type => 'IChangeEventArgs< T >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Equals',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Finds out wheather an other object equals this object. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'obj'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The other object.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the other object equals this object, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'override bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'obj',
                type => 'object'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetHashCode',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the HashCode of this object. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The HashCode.'
                    }
                  ]
                }
              ]
            },
            type => 'override int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'OldValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the old value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The old value.'
                }
              ]
            },
            type => 'T'
          },
          {
            kind => 'property',
            name => 'NewValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the new value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The new value.'
                }
              ]
            },
            type => 'T'
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'operator==',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Finds out, if two objects of type '
                },
                {
                  type => 'url',
                  link => 'd3/d13/classahbsd_1_1lib_1_1ChangeEventArgs_1a9fcb134eaf8f9c620a67555569f9b9b1',
                  content => 'ChangeEventArgs<T>'
                },
                {
                  type => 'text',
                  content => ' eaquals each other. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'left'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The object on the left side.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'right'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The object on the right side.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if both objects are eaqual, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'left',
                type => 'ChangeEventArgs< T >'
              },
              {
                declaration_name => 'right',
                type => 'ChangeEventArgs< T >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'operator!=',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Finds out, if two objects of type '
                },
                {
                  type => 'url',
                  link => 'd3/d13/classahbsd_1_1lib_1_1ChangeEventArgs_1a9fcb134eaf8f9c620a67555569f9b9b1',
                  content => 'ChangeEventArgs<T>'
                },
                {
                  type => 'text',
                  content => ' do not eaquals each other. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'left'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The object on the left side.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'right'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The object on the right side.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'TRUE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if both objects are not eaqual, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'FALSE'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'left',
                type => 'ChangeEventArgs< T >'
              },
              {
                declaration_name => 'right',
                type => 'ChangeEventArgs< T >'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Generic '
          },
          {
            type => 'url',
            link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
            content => 'EventArgs'
          },
          {
            type => 'text',
            content => ' for changing values. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'The type of the changing Values.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::Tools::ConsolePrintTable',
      kind => 'class',
      inner => [
      ],
      all_members => [
        {
          name => 'GetPart',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Tools::ConsolePrintTable'
        },
        {
          name => 'GetSize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Tools::ConsolePrintTable'
        },
        {
          name => 'Print',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::ConsolePrintTable'
        }
      ],
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'Print',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Prints a table on console. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'table'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The tableto print.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'table',
                type => 'DataTable'
              }
            ]
          }
        ]
      },
      private_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'GetPart',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets a part to print with the value to print, the info of it is the last part and the length to use. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'val'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'last'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The info, if it is the last part.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'length'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The length to use.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'left'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => '[optional] to put it on the left side.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The calculated part.'
                    }
                  ]
                }
              ]
            },
            type => 'static string',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'val',
                type => 'string'
              },
              {
                declaration_name => 'last',
                type => 'bool'
              },
              {
                declaration_name => 'length',
                type => 'int'
              },
              {
                declaration_name => 'left',
                type => 'bool',
                default_value => 'false'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetSize',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets a dictionary with the name and width of each column of the given table. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'table'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given table.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A dictionary with the name and width of each column of the given table. '
                    }
                  ]
                }
              ]
            },
            type => 'static IDictionary< string, int >',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'table',
                type => 'DataTable'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Static class to print a DataTable to console. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::EventArgs',
      kind => 'class',
      base => [
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.IEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.ApiKey.ApiKeyEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.ChangeEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'EventArgs',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::EventArgs'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'EventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor without parameters. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'EventArgs',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'val'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'A value.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'val',
                type => 'T'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Value',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets a value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A value.'
                }
              ]
            },
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Generic '
          },
          {
            type => 'url',
            link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
            content => 'EventArgs'
          },
          {
            type => 'text',
            content => '. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Type of '
                  },
                  {
                    type => 'url',
                    link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs_1a23271ab9d57f57af2108604c4b0cc804',
                    content => 'Value'
                  },
                  {
                    type => 'text',
                    content => '.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'EventArgs',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.EventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Exceptions::Exception',
      kind => 'class',
      base => [
        {
          name => 'Exception',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Exceptions.IGenericException< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'Exception',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ahbsd::lib::Exceptions::Exception'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Exceptions::Exception'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Value',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a message, a value and an inner exception. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'message'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Message.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The value.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'innerException'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The inner '
                        },
                        {
                          type => 'url',
                          link => 'dc/d90/classahbsd_1_1lib_1_1Exceptions_1_1Exception',
                          content => 'Exception'
                        },
                        {
                          type => 'text',
                          content => '.'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the value of type T.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The value of type T.'
                }
              ]
            },
            type => 'Exception(string message, T value, Exception innerException) T'
          }
        ]
      },
      protected_methods => {
        members => [
          {
            kind => 'function',
            name => 'Exception',
            virtualness => 'non_virtual',
            protection => 'protected',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor without any parameters. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a value.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a message.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'message'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Message.'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a message and a value.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'message'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Message.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a message and an inner exception.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'message'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Message.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'innerException'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The inner '
                        },
                        {
                          type => 'url',
                          link => 'dc/d90/classahbsd_1_1lib_1_1Exceptions_1_1Exception',
                          content => 'Exception'
                        },
                        {
                          type => 'text',
                          content => '.'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with serialized data.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'info'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The serialization info.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'context'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The straming content.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'Exception() Exception(T value) Exception(string message) Exception(string message, T value) Exception(string message, Exception innerException)',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'info',
                type => 'SerializationInfo'
              },
              {
                declaration_name => 'context',
                type => 'StreamingContext'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Class for a generic '
          },
          {
            type => 'url',
            link => 'dc/d90/classahbsd_1_1lib_1_1Exceptions_1_1Exception',
            content => 'Exception'
          },
          {
            type => 'text',
            content => ', which additionally holds a value of T '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'The type.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Exception',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.Exceptions.Exception< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::ApiKey::IApiKeyEventArgs',
      kind => 'interface',
      derived => [
        {
          name => 'ahbsd.lib.ApiKey.ApiKeyEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Index',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::ApiKey::IApiKeyEventArgs'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Index',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the index of the API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The index.'
                }
              ]
            },
            type => 'int?'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Interface for ApiKeyEventArgs<T>. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::IChangeEventArgs',
      kind => 'interface',
      derived => [
        {
          name => 'ahbsd.lib.ChangeEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'NewValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::IChangeEventArgs'
        },
        {
          name => 'OldValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::IChangeEventArgs'
        },
        {
          name => 'SetNewValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::IChangeEventArgs'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::IChangeEventArgs'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'SetNewValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Sets the new value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'newValue'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The new value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'Exception'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the '
                        },
                        {
                          type => 'url',
                          link => 'd6/d8f/interfaceahbsd_1_1lib_1_1IChangeEventArgs_1a7bddbfe831dc3867628c3cb6f03b03ad',
                          content => 'NewValue'
                        },
                        {
                          type => 'text',
                          content => ' was already set.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'newValue',
                type => 'T'
              }
            ],
            reimplemented_by => [
              {
                name => 'SetNewValue'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ToString',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets a string representation of the changed value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'A string representation of the changed value.'
                    }
                  ]
                }
              ]
            },
            type => 'string',
            const => 'no',
            volatile => 'no',
            parameters => [
            ],
            reimplemented_by => [
              {
                name => 'ToString'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'OldValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the old value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The old value.'
                }
              ]
            },
            type => 'T'
          },
          {
            kind => 'property',
            name => 'NewValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the new value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The new value.'
                }
              ]
            },
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Interface for generic '
          },
          {
            type => 'url',
            link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
            content => 'EventArgs'
          },
          {
            type => 'text',
            content => ' for changing values. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'The type of the changing Values.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'IEquatable< ApiKeyHolder< T >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.ApiKey.ApiKeyHolder< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IEquatable< IChangeEventArgs< T >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.ChangeEventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::IEventArgs',
      kind => 'interface',
      derived => [
        {
          name => 'ahbsd.lib.EventArgs< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::IEventArgs'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Value',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets a value. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A value.'
                }
              ]
            },
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Interface for generic '
          },
          {
            type => 'url',
            link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
            content => 'EventArgs'
          },
          {
            type => 'text',
            content => '. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Type of Value.'
                  }
                ]
              }
            ]
          },
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'The difference to usual '
          },
          {
            type => 'url',
            link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
            content => 'EventArgs'
          },
          {
            type => 'text',
            content => ' is, that a generic value is added.'
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::Exceptions::IGenericException',
      kind => 'interface',
      derived => [
        {
          name => 'ahbsd.lib.Exceptions.Exception< T >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        }
      ],
      all_members => [
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Exceptions::IGenericException'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Value',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets the value of type T. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The value of type T.'
                }
              ]
            },
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Interface for generic exceptions. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Selectable type.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Test::ITestClass',
      kind => 'interface',
      derived => [
        {
          name => 'Test.TestClass< T, A >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        },
        {
          type => 'A'
        }
      ],
      all_members => [
        {
          name => 'OnChange',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::ITestClass'
        },
        {
          name => 'Variable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::ITestClass'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Variable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets or sets a variable. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'An interface for a class to demonstrate ChangeEventArgs<T> and ChangeEventHandler<T>. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Type of '
                  },
                  {
                    type => 'url',
                    link => 'd8/df6/interfaceTest_1_1ITestClass_1a36d25b47a75c00513a29389277cd0471',
                    content => 'Variable'
                  },
                  {
                    type => 'text',
                    content => '.'
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'A'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'Type of API-Key.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'Test::Program',
      kind => 'class',
      inner => [
      ],
      all_members => [
        {
          name => 'Main',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test::Program'
        },
        {
          name => 'T1_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test::Program'
        },
        {
          name => 'T2_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test::Program'
        },
        {
          name => 'T3_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test::Program'
        }
      ],
      private_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'Main',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Running… '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'args'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Possible arguments.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'args',
                type => 'string[]'
              }
            ]
          },
          {
            kind => 'function',
            name => 'T3_OnChange',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {},
            detailed => {},
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ChangeEventArgs< object >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'T2_OnChange',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'For changes on t2. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Sending object.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'e'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Event Arguments.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ChangeEventArgs< object >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'T1_OnChange',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'For changes on t1. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Sending object.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'e'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Event Arguments.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'static void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ChangeEventArgs< string >'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'The test program. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'Test::TestClass',
      kind => 'class',
      base => [
        {
          name => 'ahbsd.lib.ApiKey.ApiKeyHolder< A >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Test.ITestClass< T, A >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'T'
        },
        {
          type => 'A'
        }
      ],
      all_members => [
        {
          name => '_variable',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test::TestClass'
        },
        {
          name => 'ApiKey',
          virtualness => 'non_virtual',
          protection => 'protected',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'ApiKeyHolder',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'ApiKeyHolder',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'FindApiKey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'GetApiKey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'GetHashCode',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'KnownApiKeys',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'OnApiKeyAdded',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'OnChange',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::TestClass'
        },
        {
          name => 'operator!=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'operator==',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ApiKeyHolder< A >'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::TestClass'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::TestClass'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::TestClass'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::TestClass'
        },
        {
          name => 'TestClass_OnApiKeyAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test::TestClass'
        },
        {
          name => 'Variable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test::TestClass'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'TestClass',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor without parameters. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestClass',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a given variable. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'v'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given variable.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'v',
                type => 'T'
              }
            ]
          },
          {
            kind => 'function',
            name => 'TestClass',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a given API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'apiKey',
                type => 'A'
              }
            ]
          },
          {
            kind => 'function',
            name => 'TestClass',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Constructor with a given value and a given API-Key. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'v'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given variable.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'apiKey'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The given API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'v',
                type => 'T'
              },
              {
                declaration_name => 'apiKey',
                type => 'A'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Variable',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gets or sets a variable. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'T??'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'TestClass_OnApiKeyAdded',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ApiKeyEventArgs< A >'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_variable',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The variable to change. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'T'
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'A class to demonstrate ChangeEventArgs<T> and ChangeEventHandler<T>. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            templateparam => [
              {
                parameters => [
                  {
                    name => 'T'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Type of '
                  },
                  {
                    type => 'url',
                    link => 'd4/db8/classTest_1_1TestClass_1a8b5aa727933d519e13734ad83c714271',
                    content => 'Variable'
                  },
                  {
                    type => 'text',
                    content => '.'
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'A'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'Type of API-Key.'
                  }
                ]
              }
            ]
          }
        ]
      }
    }
  ],
  namespaces => [
    {
      name => 'ahbsd',
      namespaces => [
        {
          name => 'ahbsd::lib'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib',
      classes => [
        {
          name => 'ahbsd::lib::ChangeEventArgs'
        },
        {
          name => 'ahbsd::lib::EventArgs'
        },
        {
          name => 'ahbsd::lib::IChangeEventArgs'
        },
        {
          name => 'ahbsd::lib::IEventArgs'
        }
      ],
      namespaces => [
        {
          name => 'ahbsd::lib::ApiKey'
        },
        {
          name => 'ahbsd::lib::Exceptions'
        },
        {
          name => 'ahbsd::lib::Tools'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'ChangeEventHandler< T >',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A delegate for change events. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  templateparam => [
                    {
                      parameters => [
                        {
                          name => 'T'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The type of changing values.'
                        }
                      ]
                    }
                  ]
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Sending object.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'e'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The changing '
                        },
                        {
                          type => 'url',
                          link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
                          content => 'EventArgs'
                        },
                        {
                          type => 'text',
                          content => '.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'delegate void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ChangeEventArgs< T >'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::ApiKey',
      classes => [
        {
          name => 'ahbsd::lib::ApiKey::ApiKeyEventArgs'
        },
        {
          name => 'ahbsd::lib::ApiKey::ApiKeyHolder'
        },
        {
          name => 'ahbsd::lib::ApiKey::IApiKeyEventArgs'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'ApiKeyEventHandler< T >',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Delegate for events with generic API-Keys. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  templateparam => [
                    {
                      parameters => [
                        {
                          name => 'T'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Type of the API-Key.'
                        }
                      ]
                    }
                  ]
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The sending object.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'e'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The event arguments with a generic API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'delegate void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ApiKeyEventArgs< T >'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Exceptions',
      classes => [
        {
          name => 'ahbsd::lib::Exceptions::Exception'
        },
        {
          name => 'ahbsd::lib::Exceptions::IGenericException'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Tools',
      classes => [
        {
          name => 'ahbsd::lib::Tools::ConsolePrintTable'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'System',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Collections::Generic',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Collections::ObjectModel',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Data',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Linq',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Runtime::Serialization',
      brief => {},
      detailed => {}
    },
    {
      name => 'Test',
      classes => [
        {
          name => 'Test::ITestClass'
        },
        {
          name => 'Test::Program'
        },
        {
          name => 'Test::TestClass'
        }
      ],
      brief => {},
      detailed => {}
    }
  ],
  files => [
    {
      name => 'ApiKeyEventArgs.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ApiKeyEventHandler.cs',
      includes => [
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'ApiKeyEventHandler< T >',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Delegate for events with generic API-Keys. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  templateparam => [
                    {
                      parameters => [
                        {
                          name => 'T'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Type of the API-Key.'
                        }
                      ]
                    }
                  ]
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The sending object.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'e'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The event arguments with a generic API-Key.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'delegate void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ApiKeyEventArgs< T >'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ApiKeyHolder.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IApiKeyEventArgs.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ChangeEventArgs.cs',
      includes => [
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'ChangeEventHandler< T >',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'A delegate for change events. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  templateparam => [
                    {
                      parameters => [
                        {
                          name => 'T'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The type of changing values.'
                        }
                      ]
                    }
                  ]
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'sender'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Sending object.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'e'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The changing '
                        },
                        {
                          type => 'url',
                          link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
                          content => 'EventArgs'
                        },
                        {
                          type => 'text',
                          content => '.'
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'delegate void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ChangeEventArgs< T >'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'EventArgs.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Exception.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IGenericException.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IChangeEventArgs.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IEventArgs.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ConsolePrintTable.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'LICENSE.md',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'README.md',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ITestClass.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Program.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'TestClass.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
    {
      name => 'md_LICENSE',
      title4 => 'LICENSE',
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Apache License Version 2.0, January 2004 '
          },
          {
            type => 'url',
            content => 'http://www.apache.org/licenses/'
          },
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION'
          },
          {
            type => 'parbreak'
          },
          {
            type => 'list',
            style => 'ordered',
            content => [
              [
                {
                  type => 'text',
                  content => 'Definitions.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"License" shall mean the terms and conditions for use, reproduction, and distribution as defined by Sections 1 through 9 of this document.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Licensor" shall mean the copyright owner or entity authorized by the copyright owner that is granting the License.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Legal Entity" shall mean the union of the acting entity and all other entities that control, are controlled by, or are under common control with that entity. For the purposes of this definition, "control" means (i) the power, direct or indirect, to cause the direction or management of such entity, whether by contract or otherwise, or (ii) ownership of fifty percent (50%) or more of the outstanding shares, or (iii) beneficial ownership of such entity.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"You" (or "Your") shall mean an individual or Legal Entity exercising permissions granted by this License.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Source" form shall mean the preferred form for making modifications, including but not limited to software source code, documentation source, and configuration files.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Object" form shall mean any form resulting from mechanical transformation or translation of a Source form, including but not limited to compiled object code, generated documentation, and conversions to other media types.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Work" shall mean the work of authorship, whether in Source or Object form, made available under the License, as indicated by a copyright notice that is included in or attached to the work (an example is provided in the Appendix below).'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Derivative Works" shall mean any work, whether in Source or Object form, that is based on (or derived from) the Work and for which the editorial revisions, annotations, elaborations, or other modifications represent, as a whole, an original work of authorship. For the purposes of this License, Derivative Works shall not include works that remain separable from, or merely link (or bind by name) to the interfaces of, the Work and Derivative Works thereof.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Contribution" shall mean any work of authorship, including the original version of the Work and any modifications or additions to that Work or Derivative Works thereof, that is intentionally submitted to Licensor for inclusion in the Work by the copyright owner or by an individual or Legal Entity authorized to submit on behalf of the copyright owner. For the purposes of this definition, "submitted" means any form of electronic, verbal, or written communication sent to the Licensor or its representatives, including but not limited to communication on electronic mailing lists, source code control systems, and issue tracking systems that are managed by, or on behalf of, the Licensor for the purpose of discussing and improving the Work, but excluding communication that is conspicuously marked or otherwise designated in writing by the copyright owner as "Not a Contribution."'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '"Contributor" shall mean Licensor and any individual or Legal Entity on behalf of whom a Contribution has been received by Licensor and subsequently incorporated within the Work.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Grant of Copyright License. Subject to the terms and conditions of this License, each Contributor hereby grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable copyright license to reproduce, prepare Derivative Works of, publicly display, publicly perform, sublicense, and distribute the Work and such Derivative Works in Source or Object form.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Grant of Patent License. Subject to the terms and conditions of this License, each Contributor hereby grants to You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable (except as stated in this section) patent license to make, have made, use, offer to sell, sell, import, and otherwise transfer the Work, where such license applies only to those patent claims licensable by such Contributor that are necessarily infringed by their Contribution(s) alone or by combination of their Contribution(s) with the Work to which such Contribution(s) was submitted. If You institute patent litigation against any entity (including a cross-claim or counterclaim in a lawsuit) alleging that the Work or a Contribution incorporated within the Work constitutes direct or contributory patent infringement, then any patent licenses granted to You under this License for that Work shall terminate as of the date such litigation is filed.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Redistribution. You may reproduce and distribute copies of the Work or Derivative Works thereof in any medium, with or without modifications, and in Source or Object form, provided that You meet the following conditions:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '(a) You must give any other recipients of the Work or Derivative Works a copy of this License; and'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '(b) You must cause any modified files to carry prominent notices stating that You changed the files; and'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '(c) You must retain, in the Source form of any Derivative Works that You distribute, all copyright, patent, trademark, and attribution notices from the Source form of the Work, excluding those notices that do not pertain to any part of the Derivative Works; and'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => '(d) If the Work includes a "NOTICE" text file as part of its distribution, then any Derivative Works that You distribute must include a readable copy of the attribution notices contained within such NOTICE file, excluding those notices that do not pertain to any part of the Derivative Works, in at least one of the following places: within a NOTICE text file distributed as part of the Derivative Works; within the Source form or documentation, if provided along with the Derivative Works; or, within a display generated by the Derivative Works, if and wherever such third-party notices normally appear. The contents of the NOTICE file are for informational purposes only and do not modify the License. You may add Your own attribution notices within Derivative Works that You distribute, alongside or as an addendum to the NOTICE text from the Work, provided that such additional attribution notices cannot be construed as modifying the License.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'You may add Your own copyright statement to Your modifications and may provide additional or different license terms and conditions for use, reproduction, or distribution of Your modifications, or for any such Derivative Works as a whole, provided Your use, reproduction, and distribution of the Work otherwise complies with the conditions stated in this License.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Submission of Contributions. Unless You explicitly state otherwise, any Contribution intentionally submitted for inclusion in the Work by You to the Licensor shall be under the terms and conditions of this License, without any additional terms or conditions. Notwithstanding the above, nothing herein shall supersede or modify the terms of any separate license agreement you may have executed with Licensor regarding such Contributions.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Trademarks. This License does not grant permission to use the trade names, trademarks, service marks, or product names of the Licensor, except as required for reasonable and customary use in describing the origin of the Work and reproducing the content of the NOTICE file.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Disclaimer of Warranty. Unless required by applicable law or agreed to in writing, Licensor provides the Work (and each Contributor provides its Contributions) on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied, including, without limitation, any warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE. You are solely responsible for determining the appropriateness of using or redistributing the Work and assume any risks associated with Your exercise of permissions under this License.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Limitation of Liability. In no event and under no legal theory, whether in tort (including negligence), contract, or otherwise, unless required by applicable law (such as deliberate and grossly negligent acts) or agreed to in writing, shall any Contributor be liable to You for damages, including any direct, indirect, special, incidental, or consequential damages of any character arising as a result of this License or out of the use or inability to use the Work (including but not limited to damages for loss of goodwill, work stoppage, computer failure or malfunction, or any and all other commercial damages or losses), even if such Contributor has been advised of the possibility of such damages.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'Accepting Warranty or Additional Liability. While redistributing the Work or Derivative Works thereof, You may choose to offer, and charge a fee for, acceptance of support, warranty, indemnity, or other liability obligations and/or rights consistent with this License. However, in accepting such obligations, You may act only on Your own behalf and on Your sole responsibility, not on behalf of any other Contributor, and only if You agree to indemnify, defend, and hold each Contributor harmless for any liability incurred by, or claims asserted against, such Contributor by reason of your accepting any such warranty or additional liability. '
                }
              ]
            ]
          }
        ]
      }
    },
    {
      name => 'md_README',
      title4 => 'ahbsd.lib',
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Classes with functionality I miss'
          },
          {
            type => 'parbreak'
          },
          {
            type => 'list',
            style => 'itemized',
            content => [
              [
                {
                  type => 'text',
                  content => 'For example generic EventArgs or EventArgs for changing values. These two are in version 1.0.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'In Version 1.0.1 some classes for generic API-Keys were added.'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'In Version 1.2.0 some code beautification was done, the license changes to Apache 2.0 and a generic Exception was added.'
                }
              ]
            ]
          },
          {
            type => 'sect1',
            title => 'About generic EventArgs',
            content => [
              {
                type => 'text',
                content => 'The generic EventArgs have a generic Value that could be set with the constructor.'
              }
            ]
          },
          {
            type => 'sect1',
            title => 'About generic ChangeEventArgs',
            content => [
              {
                type => 'text',
                content => 'The generic ChangeEventArgs have two generic values. One for the old value and one for the new value.'
              },
              {
                type => 'parbreak'
              },
              {
                type => 'text',
                content => ' '
              }
            ]
          }
        ]
      }
    }
  ]
};
1;
