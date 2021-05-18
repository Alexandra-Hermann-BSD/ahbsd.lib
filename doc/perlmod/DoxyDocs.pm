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
      name => 'ahbsd::lib::Password::CharacteristicDictionary',
      kind => 'class',
      base => [
        {
          name => 'Component',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.ICharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => '_dictionary',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => '_name',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'package',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Clear',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Contains',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'ContainsKey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'CopyTo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'GetEnumerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'GetEnumerator',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Initialize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Initialize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Initialize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'IsReadOnly',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'this[Charasteristic key]',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'TryGetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'Values',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::CharacteristicDictionary'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CharacteristicDictionary',
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
                  content => 'Constructor without parameter. '
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
            name => 'CharacteristicDictionary',
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
                  content => 'Constructor with a given owning container. '
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
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given owning container.'
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
                declaration_name => 'container',
                type => 'IContainer'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Throws an Exception. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
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
                          content => 'Allways, since no add is possible here. '
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
                declaration_name => 'key',
                type => 'Charasteristic'
              },
              {
                declaration_name => 'value',
                type => 'bool'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Throws an Exception. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
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
                          content => 'Allways, since no add is possible here. '
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
                declaration_name => 'item',
                type => 'KeyValuePair< Charasteristic, bool >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Clear',
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
                  content => 'Re-Initialize the object. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Contains',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
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
                          name => 'item'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                },
                {
                  return => [
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'item',
                type => 'KeyValuePair< Charasteristic, bool >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ContainsKey',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
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
                          name => 'key'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                },
                {
                  return => [
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'Charasteristic'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CopyTo',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
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
                          name => 'array'
                        }
                      ],
                      doc => [
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'arrayIndex'
                        }
                      ],
                      doc => [
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
                declaration_name => 'array',
                type => 'KeyValuePair< Charasteristic, bool >[]'
              },
              {
                declaration_name => 'arrayIndex',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetEnumerator',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  return => [
                  ]
                }
              ]
            },
            type => 'IEnumerator< KeyValuePair< Charasteristic, bool > >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Remove',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
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
                          name => 'key'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                },
                {
                  return => [
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'Charasteristic'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Remove',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
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
                          name => 'item'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                },
                {
                  return => [
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'item',
                type => 'KeyValuePair< Charasteristic, bool >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'TryGetValue',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
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
                          name => 'key'
                        }
                      ],
                      doc => [
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'value'
                        }
                      ],
                      doc => [
                      ]
                    }
                  ]
                },
                {
                  return => [
                  ]
                }
              ]
            },
            type => 'bool',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'key',
                type => 'Charasteristic'
              },
              {
                declaration_name => 'value',
                type => 'out bool',
                attributes => '[MaybeNullWhen(false)]'
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
                  content => 'Gets a short info of the characteristic. '
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
                      content => 'A short info of the characteristic.'
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
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'this[Charasteristic key]',
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
                  content => 'Gets or sets the value of the given key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given key.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The value of the given key.'
                    }
                  ]
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'property',
            name => 'Keys',
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
                  content => 'Gets the Keys. '
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
                  content => 'The Keys.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Each available '
                },
                {
                  type => 'url',
                  link => 'd5/d0b/namespaceahbsd_1_1lib_1_1Password_1a29088b21660d8532598efa02f918be51',
                  content => 'Charasteristic'
                },
                {
                  type => 'text',
                  content => '.'
                }
              ]
            },
            type => 'ICollection< Charasteristic >'
          },
          {
            kind => 'property',
            name => 'Values',
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
                  content => 'Gets all values. '
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
                  content => 'The values.'
                }
              ]
            },
            type => 'ICollection< bool >'
          },
          {
            kind => 'property',
            name => 'Count',
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
                  content => 'Gets the amount of KeyValuePair<TKey, TValue>s (5). '
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
                  content => 'The amount of KeyValuePair<TKey, TValue>s.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'IsReadOnly',
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
                  content => 'Gets the readability. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'true'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' if readonly, otherwise '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'false.'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ' '
                }
              ]
            },
            type => 'bool'
          },
          {
            kind => 'property',
            name => 'Name',
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
                  content => 'Gets the name of this component. '
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
                  content => 'The name of this component.'
                }
              ]
            },
            type => 'string'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'Initialize',
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
                  content => 'Initializes the _dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Initialize',
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
                  content => 'Initializes the _dictionary with a given password. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
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
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Initialize',
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
                  content => 'Initializes the _dictionary with a given password. '
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
                          name => 'password'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
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
                declaration_name => 'password',
                type => 'IPassword'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetEnumerator',
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
                  content => 'Returns an enumerator that iterates through the collection. '
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
                      content => 'An enumerator that iterates through the collection.'
                    }
                  ]
                }
              ]
            },
            type => 'IEnumerator IEnumerable.',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_dictionary',
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
                  content => 'The inner dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'IDictionary< Charasteristic, bool >'
          },
          {
            kind => 'variable',
            name => '_name',
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
                  content => 'The name of this component. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'readonly string'
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
            content => 'Characteristic Dictionarry. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::Tools::Checksum',
      kind => 'class',
      inner => [
      ],
      all_members => [
        {
          name => 'GetChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetFinalChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetFinalChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetFinalChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'GetFinalChecksum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'IsPositiv',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'IsPositiv',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'IsPositiv',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'IsPositive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'IsPositive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'IsPositive',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::Checksum'
        }
      ],
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'GetChecksum',
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
                  content => 'Gets the checksum of the given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The checksum of the given value.'
                    }
                  ]
                }
              ]
            },
            type => 'static long',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetFinalChecksum',
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
                  content => 'Gets the final checksum from a given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The final checksum of the given value.'
                    }
                  ]
                }
              ]
            },
            type => 'static short',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetChecksum',
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
                  content => 'Gets the checksum of the given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The checksum of the given value or '
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
                      content => ' if value is as well '
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
                      content => '. '
                    }
                  ]
                }
              ]
            },
            type => 'static ? long',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'long?'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetFinalChecksum',
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
                  content => 'Gets the final checksum from a given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The final checksum of the given value.'
                    }
                  ]
                }
              ]
            },
            type => 'static ? short',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'long?'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetChecksum',
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
                  content => 'Gets the checksum of the given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The checksum of the given value.'
                    }
                  ]
                }
              ]
            },
            type => 'static ulong',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'ulong'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetFinalChecksum',
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
                  content => 'Gets the final checksum from a given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The final checksum of the given value.'
                    }
                  ]
                }
              ]
            },
            type => 'static ushort',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'ulong'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetChecksum',
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
                  content => 'Gets the checksum of the given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The checksum of the given value or '
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
                      content => ' if value is as well '
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
                      content => '. '
                    }
                  ]
                }
              ]
            },
            type => 'static ? ulong',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'ulong?'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetFinalChecksum',
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
                  content => 'Gets the final checksum from a given value. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given value.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The final checksum of the given value.'
                    }
                  ]
                }
              ]
            },
            type => 'static ? ushort',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'ulong?'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsPositiv',
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
                  content => 'Checks wheather value is positive or negative. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if value is positive, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'value',
                type => 'long'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsPositive',
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
                  content => 'Checks wheather value is positive or negative. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if value is positive, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'value',
                type => 'long?'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsPositiv',
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
                  content => 'Checks wheather value is positive or negative. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if value is positive, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'value',
                type => 'ulong'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsPositive',
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
                  content => 'Checks wheather value is positive or negative. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if value is positive, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'value',
                type => 'ulong?'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsPositiv',
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
                  content => 'Checks wheather value is positive or negative. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if value is positive, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'value',
                type => 'short'
              }
            ]
          },
          {
            kind => 'function',
            name => 'IsPositive',
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
                  content => 'Checks wheather value is positive or negative. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The value to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if value is positive, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'value',
                type => 'short?'
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
            content => 'Class to calculate checksums. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'Collection',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.NamedCollection< T >',
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
      name => 'ahbsd::lib::NamedCollections::CompanyModelProducts',
      kind => 'class',
      base => [
        {
          name => 'Container',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IDictionary< ICompany, IDictionaryOfNamedList< IModel, IProductItem >>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Clear',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'CompanyModelProducts',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Contains',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'ContainsKey',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'CopyTo',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Count',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'dict',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'GetEnumerator',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'GetEnumerator',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'IsReadOnly',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Keys',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Remove',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'this[ICompany key]',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Tmp_OnNamedListAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'TryGetValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'Values',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'CompanyModelProducts',
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
            name => 'Add',
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
                  content => 'Adds a given ICompany key and its IDictionaryOfNamedList<IModel, IProductItem> value. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Company key.'
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
                          content => 'The Dictionary of Model and ProductItem.'
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
                declaration_name => 'key',
                type => 'ICompany'
              },
              {
                declaration_name => 'value',
                type => 'IDictionaryOfNamedList< IModel, IProductItem >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a Company key. '
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
                          name => 'company'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Company.'
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
                declaration_name => 'company',
                type => 'ICompany'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a defined KeyValuePair. '
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
                          name => 'item'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The defined KeyValuePair.'
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
                declaration_name => 'item',
                type => 'KeyValuePair< ICompany, IDictionaryOfNamedList< IModel, IProductItem >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Clear',
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
                  content => 'Clears this Dictionary. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Contains',
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
                  content => 'Checks wheather a given KeyValuePair is contained or not. '
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
                          name => 'item'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given KeyValuePair.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ', if contained, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
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
                declaration_name => 'item',
                type => 'KeyValuePair< ICompany, IDictionaryOfNamedList< IModel, IProductItem >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'ContainsKey',
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
                  content => 'Checks wheather a given ICompany-KEY exists or not. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The ICompany-KEY to search for.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the ICompany-KEY exists, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' '
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
                declaration_name => 'key',
                type => 'ICompany'
              }
            ]
          },
          {
            kind => 'function',
            name => 'CopyTo',
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
                  content => 'Copies the elements of this IDictionary<ICompany, IDictionaryOfNamedList<IModel, IProductItem>> to an Array, starting at an particular Array index. '
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
                          name => 'array'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given Array to copy to.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'arrayIndex'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The particular Array index to start.'
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
                          name => 'ArgumentNullException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the Array is '
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
                          content => '.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'ArgumentOutOfRangeException'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'If the given index is out of range of the array.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'ArgumentException'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'If anything with the given arguments is wrong.'
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
                declaration_name => 'array',
                type => 'KeyValuePair< ICompany, IDictionaryOfNamedList< IModel, IProductItem >>[]'
              },
              {
                declaration_name => 'arrayIndex',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetEnumerator',
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
                  content => 'Returns an enumerator, that iterates through this collection. '
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
                      content => 'An enumerator that can be used to iterate through this collection.'
                    }
                  ]
                }
              ]
            },
            type => 'IEnumerator< KeyValuePair< ICompany, IDictionaryOfNamedList< IModel, IProductItem > > >',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Remove',
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
                  content => 'Removes the given KEY and its value. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given KEY to remove.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the given KEY was found and removed, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'key',
                type => 'ICompany'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Remove',
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
                  content => 'Removes the given KeyValuePair<ICompany, IDictionaryOfNamedList<IModel, IProductItem>>. '
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
                          name => 'item'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given KeyValuePair to remove.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the given KeyValuePair was found and removed, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'item',
                type => 'KeyValuePair< ICompany, IDictionaryOfNamedList< IModel, IProductItem >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'TryGetValue',
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
                  content => 'Gets the Value associated with the given Key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given Key.'
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
                          content => 'The Value associated with the given Key.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the Key was found, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
                    }
                  ]
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
                          content => 'If any of the Arguments is '
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
                          content => '.'
                        }
                      ]
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
                declaration_name => 'key',
                type => 'ICompany'
              },
              {
                declaration_name => 'value',
                type => 'out IDictionaryOfNamedList< IModel, IProductItem >',
                attributes => '[MaybeNullWhen(false)]'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'this[ICompany key]',
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
                  content => 'Gets or sets a Dictionary of IDictionaryOfNamedList<IModel, IProductItem> for a given ICompany. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given ICompany.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The Dictionary for the given Company.'
                    }
                  ]
                }
              ]
            },
            type => 'IDictionaryOfNamedList< IModel, IProductItem >'
          },
          {
            kind => 'property',
            name => 'Keys',
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
                  content => 'Gets the Company Keys. '
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
                  content => 'The Company Keys.'
                }
              ]
            },
            type => 'ICollection< ICompany >'
          },
          {
            kind => 'property',
            name => 'Values',
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
                  content => 'Gets the Values. '
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
                  content => 'The Values.'
                }
              ]
            },
            type => 'ICollection< IDictionaryOfNamedList< IModel, IProductItem > >'
          },
          {
            kind => 'property',
            name => 'Count',
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
                  content => 'Gets the amaunt of Companies. '
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
                  content => 'The amaunt of Companies.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'IsReadOnly',
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
                  content => 'Gets the information, if this Dictionary is readonly. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'true'
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'no'
                },
                {
                  type => 'text',
                  content => ', if readonly, otherwise '
                },
                {
                  type => 'style',
                  style => 'code',
                  enable => 'yes'
                },
                {
                  type => 'text',
                  content => 'false'
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
            },
            type => 'bool'
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'Tmp_OnNamedListAdded',
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
                  content => 'Happenes, if a Named List is added to a defined company. '
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
                          content => 'The '
                        },
                        {
                          type => 'url',
                          link => 'd0/d7d/classahbsd_1_1lib_1_1EventArgs',
                          content => 'EventArgs'
                        },
                        {
                          type => 'text',
                          content => ' for a named list.'
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
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'EventArgs< INamedList< IProductItem >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetEnumerator',
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
                  content => 'Returns an enumerator, that iterates through this collection. '
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
                      content => 'An IEnumerator that can be used to iterate through this collection.'
                    }
                  ]
                }
              ]
            },
            type => 'IEnumerator IEnumerable.',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => 'dict',
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
                  content => 'A Dictionary holding companies and their model products. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'IDictionary< ICompany, IDictionaryOfNamedList< IModel, IProductItem > >'
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
            content => 'Class for a combination of difined products of a company. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'Component',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.Password.CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.Check.SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.Password',
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
      name => 'Container',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.CompanyModelProducts',
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
      name => 'Dictionary< K, INamedCollection< V >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.DictionaryOfNamedCollection< K, V >',
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
      name => 'Dictionary< K, INamedList< V >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.DictionaryOfNamedList< K, V >',
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
      name => 'ahbsd::lib::NamedCollections::DictionaryOfNamedCollection',
      kind => 'class',
      base => [
        {
          name => 'Dictionary< K, INamedCollection< V >>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.NamedCollections.IDictionaryOfNamedCollections< K, V >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'K'
        },
        {
          type => 'V'
        }
      ],
      all_members => [
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedCollection'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedCollection'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedCollection'
        },
        {
          name => 'OnNamedCollectionAdded',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedCollection'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a new key with the name of the new INamedCollection<T>. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The new key.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedCollection<T>.'
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
                          name => 'ArgumentException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If key already exists.'
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'name',
                type => 'string'
              }
            ],
            reimplements => {
              name => 'Add'
            }
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a value to the INamedCollection<T> of key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Key.'
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
                          content => 'The Value.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedCollection<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedCollection<T> was missing. '
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'value',
                type => 'V'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplements => {
              name => 'Add'
            }
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a KeyValuePair<TKey, TValue>. '
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
                          name => 'keyValuePair'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The KeyValuePair<TKey, TValue>.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedCollection<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedCollection<T> was missing. '
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
                declaration_name => 'keyValuePair',
                type => 'KeyValuePair< K, V >'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplements => {
              name => 'Add'
            }
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
            content => 'Default implementation of IDictionaryOfNamedCollections<K, V>. '
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
                    name => 'K'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Key Type.'
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'V'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'Value Type of the INamedCollection<T>.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::NamedCollections::DictionaryOfNamedList',
      kind => 'class',
      base => [
        {
          name => 'Dictionary< K, INamedList< V >>',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.NamedCollections.IDictionaryOfNamedList< K, V >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'K'
        },
        {
          type => 'V'
        }
      ],
      all_members => [
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedList'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedList'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedList'
        },
        {
          name => 'OnNamedListAdded',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::DictionaryOfNamedList'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The key.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedList<T>.'
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
                          name => 'ArgumentException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If key already exists.'
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'name',
                type => 'string'
              }
            ],
            reimplements => {
              name => 'Add'
            }
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a value to the INamedList<T> of key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The key.'
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedList<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedList<T> was missing. '
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'value',
                type => 'V'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplements => {
              name => 'Add'
            }
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a KeyValuePair<TKey, TValue>. '
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
                          name => 'keyValuePair'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The KeyValuePair<TKey, TValue>.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedList<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedList<T> was missing. '
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
                declaration_name => 'keyValuePair',
                type => 'KeyValuePair< K, V >'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplements => {
              name => 'Add'
            }
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
            content => 'Default implementation of IDictionaryOfNamedList<K, V>. '
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
                    name => 'K'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'The type of the key.'
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'V'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'The type of the INamedList<T>-ValueType.'
                  }
                ]
              }
            ]
          }
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
      name => 'ahbsd::lib::Products::IAdress',
      kind => 'interface',
      inner => [
      ],
      all_members => [
        {
          name => 'Adress',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'AdressType',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'City',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'Country',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'OnAdressChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'OnTypeChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'ZIP',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IAdress'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'AdressType',
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
                  content => 'Gets or sets the AdressType. '
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
                  content => 'The AdressType.'
                }
              ]
            },
            type => 'AdressType'
          },
          {
            kind => 'property',
            name => 'Adress',
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
                  content => 'Gets or sets the Adress. '
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
                  content => 'The Adress.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'ZIP',
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
                  content => 'Gets the ZIP. '
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
                  content => 'The ZIP.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Is only settable by the constructor.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'City',
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
                  content => 'Gets the City. '
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
                  content => 'The City.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Is only settable by the constructor.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'Country',
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
                  content => 'Gets the Country. '
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
                  content => 'The Country.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Is only settable by the constructor.'
                }
              ]
            },
            type => 'CultureInfo'
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
            content => 'An interface describing an adress in general. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
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
      name => 'ahbsd::lib::Password::ICharacteristicDictionary',
      kind => 'interface',
      base => [
        {
          name => 'IComponent',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IDictionary',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.Password.CharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::ICharacteristicDictionary'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::ICharacteristicDictionary'
        }
      ],
      public_methods => {
        members => [
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
                  content => 'Gets a short info of the characteristic. '
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
                      content => 'A short info of the characteristic.'
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
            name => 'Name',
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
                  content => 'Gets the name of this component. '
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
                  content => 'The name of this component.'
                }
              ]
            },
            type => 'string'
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
            content => 'An interface for a characteristic dictionary. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ICollection',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.INamedCollection< T >',
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
      name => 'ahbsd::lib::Products::ICompany',
      kind => 'interface',
      base => [
        {
          name => 'IComponent',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'AddAdress',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'Adresses',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'Note',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'OnAdressAdded',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'OnAdressRemoved',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'OnNoteChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'RemoveAdress',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'RemoveAdresses',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::ICompany'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'AddAdress',
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
                  content => 'Adds an Adress. '
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
                          name => 'adress'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The adress to be added.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the adress was sucessfully added; otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'adress',
                type => 'IAdress'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveAdress',
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
                  content => 'Removes an adress. '
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
                          name => 'adress'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Adress to be removed.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the adress was successfully removed; otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'adress',
                type => 'IAdress'
              }
            ]
          },
          {
            kind => 'function',
            name => 'RemoveAdresses',
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
                  content => 'Removes all adresses of the given type. '
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
                          name => 'type'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given type of adresses to remove.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the Adresses of the given type were found and removed, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'type',
                type => 'AdressType'
              }
            ]
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Name',
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
                  content => 'Gets the company name. '
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
                  content => 'The company name.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'Adresses',
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
                  content => 'Gets the list of adresses. '
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
                  content => 'The list of adresses.'
                }
              ]
            },
            type => 'IList< IAdress >'
          },
          {
            kind => 'property',
            name => 'Note',
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
                  content => 'Gets or sets the notes to the company. '
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
                  content => 'The notes to the company.'
                }
              ]
            },
            type => 'string'
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
            content => 'An interface, describing a company / manufacturer. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'IComponent',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.Password.Check.ISecurityValue',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.ICharacteristicDictionary',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.IPassword',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Products.ICompany',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Products.IModel',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Products.IProductItem',
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
      name => 'IDictionary',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.Password.ICharacteristicDictionary',
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
      name => 'IDictionary< ICompany, IDictionaryOfNamedList< IModel, IProductItem >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.CompanyModelProducts',
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
      name => 'IDictionary< K, INamedCollection< V >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.IDictionaryOfNamedCollections< K, V >',
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
      name => 'IDictionary< K, INamedList< V >>',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.IDictionaryOfNamedList< K, V >',
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
      name => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedCollections',
      kind => 'interface',
      base => [
        {
          name => 'IDictionary< K, INamedCollection< V >>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.DictionaryOfNamedCollection< K, V >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'K'
        },
        {
          type => 'V'
        }
      ],
      all_members => [
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedCollections'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedCollections'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedCollections'
        },
        {
          name => 'OnNamedCollectionAdded',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedCollections'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a new key with the name of the new INamedCollection<T>. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The new key.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedCollection<T>.'
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
                          name => 'ArgumentException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If key already exists.'
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'name',
                type => 'string'
              }
            ],
            reimplemented_by => [
              {
                name => 'Add'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a value to the INamedCollection<T> of key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The Key.'
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
                          content => 'The Value.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedCollection<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedCollection<T> was missing. '
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'value',
                type => 'V'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplemented_by => [
              {
                name => 'Add'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a KeyValuePair<TKey, TValue>. '
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
                          name => 'keyValuePair'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The KeyValuePair<TKey, TValue>.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedCollection<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedCollection<T> was missing. '
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
                declaration_name => 'keyValuePair',
                type => 'KeyValuePair< K, V >'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplemented_by => [
              {
                name => 'Add'
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
            content => 'Interface for a dictionary of named collections as value. '
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
                    name => 'K'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'Key Type.'
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'V'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'Value Type of the INamedCollection<T>.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedList',
      kind => 'interface',
      base => [
        {
          name => 'IDictionary< K, INamedList< V >>',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.DictionaryOfNamedList< K, V >',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      template_parameters => [
        {
          type => 'K'
        },
        {
          type => 'V'
        }
      ],
      all_members => [
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedList'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedList'
        },
        {
          name => 'Add',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedList'
        },
        {
          name => 'OnNamedListAdded',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedList'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The key.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedList<T>.'
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
                          name => 'ArgumentException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If key already exists.'
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'name',
                type => 'string'
              }
            ],
            reimplemented_by => [
              {
                name => 'Add'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a value to the INamedList<T> of key. '
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
                          name => 'key'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The key.'
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedList<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedList<T> was missing. '
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
                declaration_name => 'key',
                type => 'K'
              },
              {
                declaration_name => 'value',
                type => 'V'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplemented_by => [
              {
                name => 'Add'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Add',
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
                  content => 'Adds a KeyValuePair<TKey, TValue>. '
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
                          name => 'keyValuePair'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The KeyValuePair<TKey, TValue>.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The name of the new INamedList<T>. '
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
                  content => 'If the key already exists the name isn\'t needed; if the key doesn\'t exists a name is needed, otherwise a KeyNotFoundException will be thrown. '
                },
                {
                  type => 'parbreak'
                },
                {
                  exceptions => [
                    {
                      parameters => [
                        {
                          name => 'KeyNotFoundException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the key isn\'t there AND a name for the new INamedList<T> was missing. '
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
                declaration_name => 'keyValuePair',
                type => 'KeyValuePair< K, V >'
              },
              {
                declaration_name => 'name',
                type => 'string',
                default_value => 'null'
              }
            ],
            reimplemented_by => [
              {
                name => 'Add'
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
            content => 'Interface for a collection of INamedList<T>. '
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
                    name => 'K'
                  }
                ],
                doc => [
                  {
                    type => 'text',
                    content => 'The type of the key.'
                  }
                ]
              },
              {
                parameters => [
                  {
                    name => 'V'
                  }
                ],
                doc => [
                  {
                    type => 'parbreak'
                  },
                  {
                    type => 'text',
                    content => 'The type of the INamedList<T>-ValueType.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'IEquatable',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.Password.Check.ISecurityValue',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.IPassword',
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
      name => 'IList',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.INamedList< T >',
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
      name => 'ahbsd::lib::Products::IModel',
      kind => 'interface',
      base => [
        {
          name => 'IComponent',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IModel'
        },
        {
          name => 'Notes',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IModel'
        },
        {
          name => 'OnNotesChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IModel'
        },
        {
          name => 'Producer',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IModel'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Producer',
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
                  content => 'Gets the producer of the Model. '
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
                  content => 'The producer of the Model.'
                }
              ]
            },
            type => 'ICompany'
          },
          {
            kind => 'property',
            name => 'Name',
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
                  content => 'Gets the name of the model. '
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
                  content => 'The name of the model.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'Notes',
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
                  content => 'Gets or sets the notes to the model. '
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
                  content => 'The notes to the model.'
                }
              ]
            },
            type => 'string'
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
            content => 'Interface of an model of a product. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::NamedCollections::INamedCollection',
      kind => 'interface',
      base => [
        {
          name => 'ICollection',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.NamedCollection< T >',
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
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::INamedCollection'
        },
        {
          name => 'OnNameChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::INamedCollection'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::INamedCollection'
        }
      ],
      public_methods => {
        members => [
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
                  content => 'Gets a string representation of this object. '
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
                      content => 'The string representation of this object.'
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
            name => 'Name',
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
                  content => 'Gets or sets the name of the collection. '
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
                  content => 'The name of the collection.'
                }
              ]
            },
            type => 'string'
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
            content => 'Interface for a named collection. '
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
                    content => 'The type of the collected objects.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::NamedCollections::INamedList',
      kind => 'interface',
      base => [
        {
          name => 'IList',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.NamedList< T >',
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
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::INamedList'
        },
        {
          name => 'OnNameChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::INamedList'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::INamedList'
        }
      ],
      public_methods => {
        members => [
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
                  content => 'Gets a string representation of this object. '
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
                      content => 'The string representation of this object.'
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
            name => 'Name',
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
                  content => 'Gets or sets the name of the list. '
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
                  content => 'The name of the list.'
                }
              ]
            },
            type => 'string'
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
            content => 'Interface for a named list. '
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
                    content => 'The type of the listed objects.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::Password::IPassword',
      kind => 'interface',
      base => [
        {
          name => 'IComponent',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IEquatable',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.Password.Password',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Characteristics',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'Length',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'LowerCases',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'Numbers',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'OnChange',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'Spaces',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'Specials',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'UpperCases',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::IPassword'
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
                  content => 'Gets or sets the value. '
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
                  content => 'The value.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'Length',
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
                  content => 'Gets the length of the password. '
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
                  content => 'The length of the password.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'LowerCases',
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
                  content => 'Gets the amount of lower cases. '
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
                  content => 'The amount of lower cases.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'UpperCases',
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
                  content => 'Gets the amount of upper cases. '
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
                  content => 'The amount of upper cases.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Numbers',
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
                  content => 'Gets the amount of numbers. '
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
                  content => 'The amount of numbers.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Spaces',
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
                  content => 'Gets the amount of spaces. '
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
                  content => 'The amount of spaces.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Specials',
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
                  content => 'Gets the amount of special cases. '
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
                  content => 'The amount of special cases.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Characteristics',
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
                  content => 'Gets the characteristics of a password. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'ICharacteristicDictionary'
          },
          {
            kind => 'property',
            name => 'SecurityValue',
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
                  content => 'Gets the SecurityValue. '
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
                  content => 'The SecurityValue.'
                }
              ]
            },
            type => 'Check.ISecurityValue'
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
            content => 'An interface for a password object in general. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::Products::IProductItem',
      kind => 'interface',
      base => [
        {
          name => 'IComponent',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Model',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IProductItem'
        },
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IProductItem'
        },
        {
          name => 'SerialNumber',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Products::IProductItem'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Model',
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
                  content => 'Gets the model of the product. '
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
                  content => 'The model of the product.'
                }
              ]
            },
            type => 'IModel'
          },
          {
            kind => 'property',
            name => 'Name',
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
                  content => 'Gets the name of the product. '
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
                  content => 'The name of the product.'
                }
              ]
            },
            type => 'string'
          },
          {
            kind => 'property',
            name => 'SerialNumber',
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
                  content => 'Gets the serial number. '
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
                  content => 'The serial number.'
                }
              ]
            },
            type => 'string'
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
            content => 'Interface of an Product. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::Password::Check::ISecurityValue',
      kind => 'interface',
      base => [
        {
          name => 'IComponent',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'IEquatable',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      derived => [
        {
          name => 'ahbsd.lib.Password.Check.SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => 'Password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::ISecurityValue'
        },
        {
          name => 'Security',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::ISecurityValue'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Password',
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
                  content => 'Gets the password. '
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
                  content => 'The password.'
                }
              ]
            },
            type => 'IPassword'
          },
          {
            kind => 'property',
            name => 'Security',
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
                  content => 'Gets the security. '
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
                  content => 'The security.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The higher, the better.'
                }
              ]
            },
            type => 'ushort'
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
            content => 'An Interface for getting the security value of a given '
          },
          {
            type => 'url',
            link => 'dd/dea/interfaceahbsd_1_1lib_1_1Password_1_1IPassword',
            content => 'IPassword'
          },
          {
            type => 'text',
            content => '. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'Test_xUnit::ITestClass',
      kind => 'interface',
      derived => [
        {
          name => 'Test_xUnit.TestClass< T, A >',
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
          scope => 'Test_xUnit::ITestClass'
        },
        {
          name => 'Variable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::ITestClass'
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
                    link => 'd8/d81/interfaceTest__xUnit_1_1ITestClass_1a9c06a8567aceb8cabf5d353498ac2fec',
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
      name => 'List',
      kind => 'class',
      derived => [
        {
          name => 'ahbsd.lib.NamedCollections.NamedList< T >',
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
      name => 'ahbsd::lib::NamedCollections::NamedCollection',
      kind => 'class',
      base => [
        {
          name => 'Collection',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.NamedCollections.INamedCollection< T >',
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
          name => '_name',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'NamedCollection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'NamedCollection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'NamedCollection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'NamedCollection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'OnNameChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedCollection'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'NamedCollection',
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
            name => 'NamedCollection',
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
                  content => 'Constructor with a given IList<T> to wrap. '
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
                          name => 'list'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The list to wrap.'
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
                declaration_name => 'list',
                type => 'IList< T >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'NamedCollection',
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
                  content => 'Constructor with a given name for the collection. '
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given name for the collection.'
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
                declaration_name => 'name',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'NamedCollection',
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
                  content => 'Constructor with a given name for the collection and a IList<T> to wrap. '
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given name for the collection.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'list'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The list to wrap.'
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
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'list',
                type => 'IList< T >'
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
                  content => 'Gets a string representation of this object. '
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
                      content => 'The string representation of this object.'
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
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Name',
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
                  content => 'Gets or sets the name of the collection. '
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
                  content => 'The name of the collection.'
                }
              ]
            },
            type => 'string??'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_name',
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
                  content => 'The name of the collection. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'string'
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
            content => 'Default implementation of INamedCollection<T>. '
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
                    content => 'Type of the collected objects.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::NamedCollections::NamedList',
      kind => 'class',
      base => [
        {
          name => 'List',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.NamedCollections.INamedList< T >',
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
          name => '_name',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'Name',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'NamedList',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'NamedList',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'NamedList',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'NamedList',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'NamedList',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'NamedList',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'OnNameChanged',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::NamedCollections::NamedList'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'NamedList',
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
            name => 'NamedList',
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
                  content => 'Constructor with a base capacity of the list. '
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
                          name => 'capacity'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The base capacity of the list.'
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
                          name => 'ArgumentOutOfRangeException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the capacity is out of range. '
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
                declaration_name => 'capacity',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'NamedList',
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
                  content => 'Constructor with a given collection. '
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
                          name => 'collection'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given collection.'
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
                declaration_name => 'collection',
                type => 'IEnumerable< T >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'NamedList',
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
                  content => 'Constructor with a given name. '
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given name.'
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
                declaration_name => 'name',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'NamedList',
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
                  content => 'Constructor with a given name and a base capacity of the list. '
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given name.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'capacity'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The base capacity of the list.'
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
                          name => 'ArgumentOutOfRangeException'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'If the capacity is out of range. '
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
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'capacity',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'NamedList',
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
                  content => 'Constructor with a given name and a given collection. '
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
                          name => 'name'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given name.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'collection'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The given collection.'
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
                declaration_name => 'name',
                type => 'string'
              },
              {
                declaration_name => 'collection',
                type => 'IEnumerable< T >'
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
                  content => 'Gets a string representation of this object. '
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
                      content => 'The string representation of this object.'
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
          }
        ]
      },
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Name',
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
                  content => 'Gets or sets the name of the list. '
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
                  content => 'The name of the list.'
                }
              ]
            },
            type => 'string??'
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_name',
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
                  content => 'The name of the list. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'string'
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
            content => 'Default implementation of INamedList<T>. '
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
                    content => 'Type of the listed objects.'
                  }
                ]
              }
            ]
          }
        ]
      }
    },
    {
      name => 'ahbsd::lib::Password::Password',
      kind => 'class',
      base => [
        {
          name => 'Component',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.IPassword',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => '_length',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_lower',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_numbers',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_securityValue',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_spaces',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_specials',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_upper',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => '_value',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Characteristics',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetCharasteristic',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetCharasteristics',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetHashCode',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetLowerCases',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetNumbers',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetPassword',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetPassword',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetSpaces',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetSpecials',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'GetUpperCases',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Initialize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Length',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'LowerCases',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Numbers',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'OnChange',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'operator!=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'operator==',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Password_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Spaces',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Specials',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'UpperCases',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        },
        {
          name => 'Value',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Password'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'Password',
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
                  content => 'Constructor without any parameter. '
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
            name => 'Password',
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
                  content => 'Constructor with a given password. '
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
                          name => 'passwd'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
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
                declaration_name => 'passwd',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Password',
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
                  content => 'Constructor with a given owning container. '
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
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given owning container.'
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
                declaration_name => 'container',
                type => 'IContainer'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Password',
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
                  content => 'Constructor with a given password and a given owning container. '
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
                          name => 'passwd'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The given owning container.'
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
                declaration_name => 'passwd',
                type => 'string'
              },
              {
                declaration_name => 'container',
                type => 'IContainer'
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
                  content => 'Compares an other object with this object. '
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the other object eaquals this password, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                  content => 'Compares an other '
                },
                {
                  type => 'url',
                  link => 'dd/dea/interfaceahbsd_1_1lib_1_1Password_1_1IPassword',
                  content => 'IPassword'
                },
                {
                  type => 'text',
                  content => ' with this object. '
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
                          content => 'The other '
                        },
                        {
                          type => 'url',
                          link => 'dd/dea/interfaceahbsd_1_1lib_1_1Password_1_1IPassword',
                          content => 'IPassword'
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
                  return => [
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the other '
                    },
                    {
                      type => 'url',
                      link => 'dd/dea/interfaceahbsd_1_1lib_1_1Password_1_1IPassword',
                      content => 'IPassword'
                    },
                    {
                      type => 'text',
                      content => ' eaquals this password, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                type => 'IPassword'
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
                  content => 'Gets or sets the value. '
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
                  content => 'The value.'
                }
              ]
            },
            type => 'string?'
          },
          {
            kind => 'property',
            name => 'Length',
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
                  content => 'Gets the length of the password. '
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
                  content => 'The length of the password.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'LowerCases',
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
                  content => 'Gets the amount of lower cases. '
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
                  content => 'The amount of lower cases.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'UpperCases',
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
                  content => 'Gets the amount of upper cases. '
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
                  content => 'The amount of upper cases.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Numbers',
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
                  content => 'Gets the amount of numbers. '
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
                  content => 'The amount of numbers.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Spaces',
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
                  content => 'Gets the amount of spaces. '
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
                  content => 'The amount of spaces.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Specials',
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
                  content => 'Gets the amount of special cases. '
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
                  content => 'The amount of special cases.'
                }
              ]
            },
            type => 'int'
          },
          {
            kind => 'property',
            name => 'Characteristics',
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
                  content => 'Gets the characteristics of a password. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'ICharacteristicDictionary'
          },
          {
            kind => 'property',
            name => 'SecurityValue',
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
                  content => 'Gets the SecurityValue. '
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
                  content => 'The SecurityValue.'
                }
              ]
            },
            type => 'Check.ISecurityValue'
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'GetCharasteristics',
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
                  content => 'Gets the password charasteristics of the given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The password charasteristics.'
                    }
                  ]
                }
              ]
            },
            type => 'static ICharacteristicDictionary',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetPassword',
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
                  content => 'Gets a '
                },
                {
                  type => 'url',
                  link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
                  content => 'Password'
                },
                {
                  type => 'text',
                  content => ' from a given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The '
                    },
                    {
                      type => 'url',
                      link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
                      content => 'Password'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static IPassword',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetPassword',
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
                  content => 'Gets a '
                },
                {
                  type => 'url',
                  link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
                  content => 'Password'
                },
                {
                  type => 'text',
                  content => ' from a given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'An owning container.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The '
                    },
                    {
                      type => 'url',
                      link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
                      content => 'Password'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static IPassword',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              },
              {
                declaration_name => 'container',
                type => 'IContainer'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetLowerCases',
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
                  content => 'Gets the amount of lower cases in the given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The amount of lower cases.'
                    }
                  ]
                }
              ]
            },
            type => 'static int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetUpperCases',
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
                  content => 'Gets the amount of upper cases in the given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The amount of upper cases.'
                    }
                  ]
                }
              ]
            },
            type => 'static int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetSpaces',
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
                  content => 'Gets the amount of spaces in the given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The amount of spaces.'
                    }
                  ]
                }
              ]
            },
            type => 'static int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetNumbers',
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
                  content => 'Gets the amount of numbers in the given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The amount of numbers.'
                    }
                  ]
                }
              ]
            },
            type => 'static int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetSpecials',
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
                  content => 'Gets the amount of special chars in the given string. '
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
                          name => 'value'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given string.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The amount of special chars.'
                    }
                  ]
                }
              ]
            },
            type => 'static int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'value',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'GetCharasteristic',
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
                  content => 'Gets the '
                },
                {
                  type => 'url',
                  link => 'd5/d0b/namespaceahbsd_1_1lib_1_1Password_1a29088b21660d8532598efa02f918be51',
                  content => 'Charasteristic'
                },
                {
                  type => 'text',
                  content => ' of a given char. '
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
                          name => 'c'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given char.'
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'The '
                    },
                    {
                      type => 'url',
                      link => 'd5/d0b/namespaceahbsd_1_1lib_1_1Password_1a29088b21660d8532598efa02f918be51',
                      content => 'Charasteristic'
                    },
                    {
                      type => 'text',
                      content => '.'
                    }
                  ]
                }
              ]
            },
            type => 'static Charasteristic',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'c',
                type => 'char'
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
                  content => 'Compares two '
                },
                {
                  type => 'url',
                  link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
                  content => 'Password'
                },
                {
                  type => 'text',
                  content => 's. '
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
                          content => 'The password on the left side.'
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
                          content => 'The password on the right side.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if both passwords eaquals, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                type => 'Password'
              },
              {
                declaration_name => 'right',
                type => 'Password'
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
                  content => 'Compares two '
                },
                {
                  type => 'url',
                  link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
                  content => 'Password'
                },
                {
                  type => 'text',
                  content => 's. '
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
                          content => 'The password on the left side.'
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
                          content => 'The password on the right side.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if both passwords do not eaquals, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                type => 'Password'
              },
              {
                declaration_name => 'right',
                type => 'Password'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'Initialize',
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
                  content => 'Initializing this object. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'Password_OnChange',
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
                  content => 'When the password changes, all variables must be updated as well. '
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
                          content => 'The ChangeEventArg.'
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
                declaration_name => 'sender',
                type => 'object'
              },
              {
                declaration_name => 'e',
                type => 'ChangeEventArgs< IPassword >'
              }
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_value',
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
                  content => 'The value. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'string'
          },
          {
            kind => 'variable',
            name => '_length',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_lower',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_upper',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_spaces',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_specials',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_numbers',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int'
          },
          {
            kind => 'variable',
            name => '_securityValue',
            virtualness => 'non_virtual',
            protection => 'private',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'Check.ISecurityValue'
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
            content => 'A '
          },
          {
            type => 'url',
            link => 'dc/d81/classahbsd_1_1lib_1_1Password_1_1Password',
            content => 'Password'
          },
          {
            type => 'text',
            content => ' class. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::Tools::PrimeCheck',
      kind => 'class',
      inner => [
      ],
      all_members => [
        {
          name => 'Amount',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::PrimeCheck'
        },
        {
          name => 'Check',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::PrimeCheck'
        },
        {
          name => 'Time',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Tools::PrimeCheck'
        }
      ],
      properties => {
        members => [
          {
            kind => 'property',
            name => 'Time',
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
                  content => 'Gets the time it took for the last '
                },
                {
                  type => 'url',
                  link => 'da/d29/classahbsd_1_1lib_1_1Tools_1_1PrimeCheck_1a41d850538446f1250bde7a23d2649d95',
                  content => 'Check(ulong)'
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
                  type => 'text',
                  content => 'The time it took for the last '
                },
                {
                  type => 'url',
                  link => 'da/d29/classahbsd_1_1lib_1_1Tools_1_1PrimeCheck_1a41d850538446f1250bde7a23d2649d95',
                  content => 'Check(ulong)'
                },
                {
                  type => 'text',
                  content => '. '
                }
              ]
            },
            type => 'static TimeSpan'
          },
          {
            kind => 'property',
            name => 'Amount',
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
                  content => 'Gets the amount of loops it took for the last '
                },
                {
                  type => 'url',
                  link => 'da/d29/classahbsd_1_1lib_1_1Tools_1_1PrimeCheck_1a41d850538446f1250bde7a23d2649d95',
                  content => 'Check(ulong)'
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
                  type => 'text',
                  content => 'The amount of loops it took for the last '
                },
                {
                  type => 'url',
                  link => 'da/d29/classahbsd_1_1lib_1_1Tools_1_1PrimeCheck_1a41d850538446f1250bde7a23d2649d95',
                  content => 'Check(ulong)'
                },
                {
                  type => 'text',
                  content => '. '
                }
              ]
            },
            type => 'static uint'
          }
        ]
      },
      public_static_methods => {
        members => [
          {
            kind => 'function',
            name => 'Check',
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
                  content => 'Checks wheather nr is a prime number or not. '
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
                          name => 'nr'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The number to check.'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' when nr is a prime number, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                declaration_name => 'nr',
                type => 'ulong'
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
            content => 'Class for checking, wheather a given number is a prime number or not. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'ahbsd::lib::Password::Check::SecurityValue',
      kind => 'class',
      base => [
        {
          name => 'Component',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'ahbsd.lib.Password.Check.ISecurityValue',
          virtualness => 'non_virtual',
          protection => 'public'
        }
      ],
      inner => [
      ],
      all_members => [
        {
          name => '_security',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'Equals',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'GetHashCode',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'Initialize',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'operator!=',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'operator==',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'Password',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'Security',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'SecurityValue',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        },
        {
          name => 'ToString',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'ahbsd::lib::Password::Check::SecurityValue'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'SecurityValue',
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
            name => 'SecurityValue',
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
                  content => 'Constructor with a given password. '
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
                          name => 'password'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
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
                declaration_name => 'password',
                type => 'string'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SecurityValue',
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
                  content => 'Constructor with a given password. '
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
                          name => 'password'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
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
                declaration_name => 'password',
                type => 'IPassword'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SecurityValue',
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
                  content => 'Constructor with a given owning container. '
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
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given owning container.'
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
                declaration_name => 'container',
                type => 'IContainer'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SecurityValue',
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
                  content => 'Constructor with a given password and a given owning container. '
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
                          name => 'password'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The given owning container.'
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
                declaration_name => 'password',
                type => 'string'
              },
              {
                declaration_name => 'container',
                type => 'IContainer'
              }
            ]
          },
          {
            kind => 'function',
            name => 'SecurityValue',
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
                  content => 'Constructor with a given password and a given owning container. '
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
                          name => 'password'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'The given password.'
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'container'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'The given owning container.'
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
                declaration_name => 'password',
                type => 'IPassword'
              },
              {
                declaration_name => 'container',
                type => 'IContainer'
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
                  content => 'Gets the Security Value. '
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
                      content => 'The Security Value.'
                    }
                  ]
                }
              ]
            },
            type => 'override string',
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
                  content => 'Checks wheather an other object is equal to this object. '
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the other object eaquals this object, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                  content => 'Checks wheather an other '
                },
                {
                  type => 'url',
                  link => 'd5/d85/interfaceahbsd_1_1lib_1_1Password_1_1Check_1_1ISecurityValue',
                  content => 'ISecurityValue'
                },
                {
                  type => 'text',
                  content => ' object is equal to this object. '
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
                          content => 'The other '
                        },
                        {
                          type => 'url',
                          link => 'd5/d85/interfaceahbsd_1_1lib_1_1Password_1_1Check_1_1ISecurityValue',
                          content => 'ISecurityValue'
                        },
                        {
                          type => 'text',
                          content => ' object. '
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if the other '
                    },
                    {
                      type => 'url',
                      link => 'd5/d85/interfaceahbsd_1_1lib_1_1Password_1_1Check_1_1ISecurityValue',
                      content => 'ISecurityValue'
                    },
                    {
                      type => 'text',
                      content => ' object eaquals this object, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                type => 'ISecurityValue'
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
                  content => 'Gets the hash code. '
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
                      content => 'The hash code.'
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
            name => 'Password',
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
                  content => 'Gets the password. '
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
                  content => 'The password.'
                }
              ]
            },
            type => 'IPassword'
          },
          {
            kind => 'property',
            name => 'Security',
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
                  content => 'Gets the security. '
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
                  content => 'The security value.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'The higher, the better.'
                }
              ]
            },
            type => 'ushort'
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
                  content => 'Checks wheather two objects of type '
                },
                {
                  type => 'url',
                  link => 'd2/d42/classahbsd_1_1lib_1_1Password_1_1Check_1_1SecurityValue',
                  content => 'SecurityValue'
                },
                {
                  type => 'text',
                  content => ' do eaquals each other. '
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if both objects are eaqual to each other, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                type => 'SecurityValue'
              },
              {
                declaration_name => 'right',
                type => 'SecurityValue'
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
                  content => 'Checks wheather two objects of type '
                },
                {
                  type => 'url',
                  link => 'd2/d42/classahbsd_1_1lib_1_1Password_1_1Check_1_1SecurityValue',
                  content => 'SecurityValue'
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
                      content => 'true'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => ' if both objects are not eaqual to each other, otherwise '
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'yes'
                    },
                    {
                      type => 'text',
                      content => 'false'
                    },
                    {
                      type => 'style',
                      style => 'code',
                      enable => 'no'
                    },
                    {
                      type => 'text',
                      content => '. '
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
                type => 'SecurityValue'
              },
              {
                declaration_name => 'right',
                type => 'SecurityValue'
              }
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'Initialize',
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
                  content => 'Initializes the _security value. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_members => {
        members => [
          {
            kind => 'variable',
            name => '_security',
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
                  content => 'The security value. '
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
                  content => 'The higher, the better.'
                }
              ]
            },
            type => 'ushort'
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
            content => 'Component for the Security value of an password. '
          }
        ]
      },
      detailed => {
        doc => [
        ]
      }
    },
    {
      name => 'Test_xUnit::TestClass',
      kind => 'class',
      base => [
        {
          name => 'ahbsd.lib.ApiKey.ApiKeyHolder< A >',
          virtualness => 'non_virtual',
          protection => 'public'
        },
        {
          name => 'Test_xUnit.ITestClass< T, A >',
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
          scope => 'Test_xUnit::TestClass'
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
          scope => 'Test_xUnit::TestClass'
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
          scope => 'Test_xUnit::TestClass'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::TestClass'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::TestClass'
        },
        {
          name => 'TestClass',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::TestClass'
        },
        {
          name => 'TestClass_OnApiKeyAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::TestClass'
        },
        {
          name => 'Variable',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::TestClass'
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
                    link => 'de/d60/classTest__xUnit_1_1TestClass_1a4a3f4660a1a3da53bfd5602787685de7',
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
      name => 'Test_xUnit::UnitTest1',
      kind => 'class',
      inner => [
      ],
      all_members => [
        {
          name => 'D1_OnNamedCollectionAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'D2_OnNamedCollectionAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'L1_OnNamedListAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'L2_OnNamedListAdded',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'Nc1_OnNameChanged',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'P1_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'T1_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'T2_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'T3_OnChange',
          virtualness => 'non_virtual',
          protection => 'private',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestChange',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestCheckSum',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestDictionaryOfNamedCollections',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestDictionaryOfNamedLists',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestNamedCollection',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestPasswd',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        },
        {
          name => 'TestPrime',
          virtualness => 'non_virtual',
          protection => 'public',
          scope => 'Test_xUnit::UnitTest1'
        }
      ],
      public_methods => {
        members => [
          {
            kind => 'function',
            name => 'TestChange',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestPrime',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestCheckSum',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestNamedCollection',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestDictionaryOfNamedCollections',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestDictionaryOfNamedLists',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'TestPasswd',
            virtualness => 'non_virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          }
        ]
      },
      private_methods => {
        members => [
          {
            kind => 'function',
            name => 'D2_OnNamedCollectionAdded',
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
                type => 'EventArgs< INamedCollection< string >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'D1_OnNamedCollectionAdded',
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
                type => 'EventArgs< INamedCollection< double >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'L1_OnNamedListAdded',
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
                type => 'EventArgs< INamedList< double >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'L2_OnNamedListAdded',
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
                type => 'EventArgs< INamedList< string >>'
              }
            ]
          },
          {
            kind => 'function',
            name => 'Nc1_OnNameChanged',
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
                type => 'ChangeEventArgs< string >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'T3_OnChange',
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
                type => 'ChangeEventArgs< object >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'T2_OnChange',
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
                type => 'ChangeEventArgs< object >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'T1_OnChange',
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
                type => 'ChangeEventArgs< string >'
              }
            ]
          },
          {
            kind => 'function',
            name => 'P1_OnChange',
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
                type => 'ChangeEventArgs< IPassword >'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
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
          name => 'ahbsd::lib::NamedCollections'
        },
        {
          name => 'ahbsd::lib::Password'
        },
        {
          name => 'ahbsd::lib::Products'
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
      name => 'ahbsd::lib::NamedCollections',
      classes => [
        {
          name => 'ahbsd::lib::NamedCollections::CompanyModelProducts'
        },
        {
          name => 'ahbsd::lib::NamedCollections::DictionaryOfNamedCollection'
        },
        {
          name => 'ahbsd::lib::NamedCollections::DictionaryOfNamedList'
        },
        {
          name => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedCollections'
        },
        {
          name => 'ahbsd::lib::NamedCollections::IDictionaryOfNamedList'
        },
        {
          name => 'ahbsd::lib::NamedCollections::INamedCollection'
        },
        {
          name => 'ahbsd::lib::NamedCollections::INamedList'
        },
        {
          name => 'ahbsd::lib::NamedCollections::NamedCollection'
        },
        {
          name => 'ahbsd::lib::NamedCollections::NamedList'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Password',
      classes => [
        {
          name => 'ahbsd::lib::Password::CharacteristicDictionary'
        },
        {
          name => 'ahbsd::lib::Password::ICharacteristicDictionary'
        },
        {
          name => 'ahbsd::lib::Password::IPassword'
        },
        {
          name => 'ahbsd::lib::Password::Password'
        }
      ],
      namespaces => [
        {
          name => 'ahbsd::lib::Password::Check'
        }
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'Charasteristic',
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
                  content => 'The charasteristic of a password. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            values => [
              {
                name => 'Numeric',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A numeric letter. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'LowercaseLetter',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A lowercase letter. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'CapitalLetter',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A capital letter. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'SpecialCharacter',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A special character. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Space',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A space. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Password::Check',
      classes => [
        {
          name => 'ahbsd::lib::Password::Check::ISecurityValue'
        },
        {
          name => 'ahbsd::lib::Password::Check::SecurityValue'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Products',
      classes => [
        {
          name => 'ahbsd::lib::Products::IAdress'
        },
        {
          name => 'ahbsd::lib::Products::ICompany'
        },
        {
          name => 'ahbsd::lib::Products::IModel'
        },
        {
          name => 'ahbsd::lib::Products::IProductItem'
        }
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'AdressType',
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
                  content => 'An enum for the type of an Adress. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            values => [
              {
                name => 'Postal',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The postal adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Delivery',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The delivery adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Store',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The store adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Private',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The private adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Other',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'An other adress. '
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
                      content => 'If no other type matches. '
                    }
                  ]
                }
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ahbsd::lib::Tools',
      classes => [
        {
          name => 'ahbsd::lib::Tools::Checksum'
        },
        {
          name => 'ahbsd::lib::Tools::ConsolePrintTable'
        },
        {
          name => 'ahbsd::lib::Tools::PrimeCheck'
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
      name => 'System::Collections',
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
      name => 'System::ComponentModel',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Data',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Diagnostics::CodeAnalysis',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Globalization',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Linq',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Reflection',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Runtime::Serialization',
      brief => {},
      detailed => {}
    },
    {
      name => 'System::Text',
      brief => {},
      detailed => {}
    },
    {
      name => 'Test_xUnit',
      classes => [
        {
          name => 'Test_xUnit::ITestClass'
        },
        {
          name => 'Test_xUnit::TestClass'
        },
        {
          name => 'Test_xUnit::UnitTest1'
        }
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Xunit',
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
      name => 'CompanyModelProducts.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'DictionaryOfNamedCollection.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'DictionaryOfNamedList.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IDictionaryOfNamedCollections.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IDictionaryOfNamedList.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'INamedCollection.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'INamedList.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'NamedCollection.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'NamedList.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'CharacteristicDictionary.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Charasteristic.cs',
      includes => [
      ],
      included_by => [
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'Charasteristic',
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
                  content => 'The charasteristic of a password. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            values => [
              {
                name => 'Numeric',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A numeric letter. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'LowercaseLetter',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A lowercase letter. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'CapitalLetter',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A capital letter. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'SpecialCharacter',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A special character. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Space',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'A space. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ISecurityValue.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'SecurityValue.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'ICharacteristicDictionary.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IPassword.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Password.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IAdress.cs',
      includes => [
      ],
      included_by => [
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'AdressType',
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
                  content => 'An enum for the type of an Adress. '
                }
              ]
            },
            detailed => {
              doc => [
              ]
            },
            values => [
              {
                name => 'Postal',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The postal adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Delivery',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The delivery adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Store',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The store adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Private',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'The private adress. '
                    }
                  ]
                },
                detailed => {
                  doc => [
                  ]
                }
              },
              {
                name => 'Other',
                brief => {
                  doc => [
                    {
                      type => 'parbreak'
                    },
                    {
                      type => 'text',
                      content => 'An other adress. '
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
                      content => 'If no other type matches. '
                    }
                  ]
                }
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'ICompany.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IModel.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'IProduct.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Checksum.cs',
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
      name => 'PrimeCheck.cs',
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
      name => 'Test_xUnit.deps.json',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Test_xUnit.runtimeconfig.dev.json',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Test_xUnit.runtimeconfig.json',
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
      name => '.NETCoreApp,Version=v3.1.AssemblyAttributes.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Test_xUnit.AssemblyInfo.cs',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'project.assets.json',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    },
    {
      name => 'Test_xUnit.csproj.nuget.dgspec.json',
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
    },
    {
      name => 'UnitTest1.cs',
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
