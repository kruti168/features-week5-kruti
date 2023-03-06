Feature: Bookcategory

  Background: I should be able to see homepage
    Given       I enter URL"https://demo.nopcommerce.com/" in browser
    And         I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories

    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:

      |categories             |
      |computer               |
      |Electronic             |
      |Apparel                |
      |Digital downloads      |
      |Books                  |
      |Jewellery              |
      |Gift card              |

  Scenario Outline: I should be able to see book page with filters

    When      I select book category from top menu tabs on home page
    Then      I should be navigated to book category
    And       I should be able to see "<filers>"

    Examples:
      |  Filters         |
      |Short by          |
      |Display           |
      |The Grid          |
      |List Tab          |

  Scenario Outline: I should to able to see list of terms of each filter
    Given      I am on book page
    When       I click on "<Filter>"
    Then       I should be able to see "<list>" in dropdown menu

    Examples:
      |Filter               | List                                                                            |
      |                     |                                                                                 |
      |Sort by              | Name: A to Z ,name : Z tO A,Price : Low to High ,Price:High to low ,Created on
      |Display              | 3, 6, 9

  Scenario Outline: I should to able to choose any filter option with specific result
    Given       I am on book page
    When        I click on "<Fliter>"
    And         I click on any "<option>"
    Then        I should be able to choose any filter option from the list
    And         I should be able to see "<result>"


    Examples:
      | Filter                     |Option                           |Result
      |Sort by name in alphabetical|Name: A to Z                     |Sorted product with the product
      |Order A to Z                |                                 |                                   |
      |Sort by name in alphabetical|Name :Z to A                     |Sorted product with the product
      |Order Z to A                |                                 |                                      |
      |Sort by descending order    |Price :low to high               |Sorted product with the product
      |Sort by ascending order     |Price:High to Low                |Sorted product with the product
      |Sort by show first          |Created on                       |Recently added product should be
      |Display                     | 3                               | 3 Products in a page
      |Display                     | 6                               | 6 products in a page
      |Display                     | 9                               | 9 products in a page

    Scenario Outline: I should be able to see product display format according display format type as per given
      picture in SRS document

      Given      I am on book page
      When       I click on "<display format icon>"
      Then       I should be able to see product display format according display format type as per given
                 picture in SRS document

    Examples:
      | display format icon  |
      | Grid                 |
      | List                 |


