defmodule MeeseeksXml do
  import Meeseeks.XPath
  @path "/home/josh/Downloads/Wikipedia-20210626124344.xml"

  # WARNING, RUNNING THIS WILL EAT ALL YOUR MEMORY AND MIGHT CRASH YOUR COMPUTER :-(
  def example1() do
    # read the XML file
    items = File.read!(@path)
            |> Meeseeks.parse(:xml)
            |> Meeseeks.all(xpath("//page"))

    # example to show pry does not work, we should be able to use IEx.pry
    require IEx
    IEx.pry
  end

  def example2() do
    # read the XML file
    items = File.read!(@path)
            |> Meeseeks.parse(:xml)
            |> Meeseeks.all(xpath("//page"))
            |> Enum.take(5)

    # example to show pry does work with 5 results
    require IEx
    IEx.pry
  end
end