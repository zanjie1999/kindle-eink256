.class public Lcom/amazon/xray/model/util/EntityUtil;
.super Ljava/lang/Object;
.source "EntityUtil.java"


# direct methods
.method public static getEntityLabel(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v0, v0, Lcom/amazon/xray/model/DB$EntityTable;->LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object p0, p0, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {p1, p2, p0}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
