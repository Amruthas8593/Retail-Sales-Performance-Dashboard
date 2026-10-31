// Power Query M: import data/retail_sales_50000.csv.
// Replace the sample path with the location of your downloaded CSV.
let
    Source = Csv.Document(
        File.Contents("C:\\REPLACE_WITH_YOUR_PATH\\retail_sales_50000.csv"),
        [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]
    ),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Types = Table.TransformColumnTypes(Headers, {
        {"Date", type date}, {"Region", type text}, {"Category", type text},
        {"Product", type text}, {"Channel", type text},
        {"Units_Sold", Int64.Type}, {"Revenue", type number}, {"Profit", type number}
    })
in
    Types
