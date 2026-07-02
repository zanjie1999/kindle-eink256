.class public Lcom/amazon/xray/model/util/DescriptionUtil;
.super Ljava/lang/Object;
.source "DescriptionUtil.java"


# static fields
.field private static final DESC_SOURCE_URL_WILDCARD_TOKEN:Ljava/lang/String; = "%s"


# direct methods
.method public static getDescription(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Lcom/amazon/xray/model/object/Description;
    .locals 9

    .line 39
    sget-object v0, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 43
    :cond_0
    sget-object v0, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 49
    :cond_1
    sget-object v0, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$SourceTable;->URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->WILDCARD:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {p1, p2, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v2, "%s"

    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    .line 56
    sget-object v0, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v8

    .line 58
    new-instance v0, Lcom/amazon/xray/model/object/Description;

    sget-object v1, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$SourceTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 60
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 62
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 63
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/xray/model/object/Description;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDescriptionText(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Lcom/amazon/xray/model/object/Description;
    .locals 9

    .line 78
    sget-object v0, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    sget-object v0, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 88
    :cond_1
    sget-object v1, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {p0, p1, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v8

    .line 90
    new-instance p0, Lcom/amazon/xray/model/object/Description;

    invoke-static {v0}, Lcom/amazon/xray/model/util/DescriptionUtil;->stripNewlines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/xray/model/object/Description;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static stripNewlines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[\n\r]+"

    const-string v1, " "

    .line 102
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
