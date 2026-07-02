.class public Lcom/amazon/xray/model/DB$DescriptionTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptionTable"
.end annotation


# instance fields
.field public final ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final WILDCARD:Lcom/amazon/xray/model/sql/column/StringColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "entity_description"

    .line 112
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "rowid"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "text"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 107
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "source_wildcard"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$DescriptionTable;->WILDCARD:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 108
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "source"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 109
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "entity"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$DescriptionTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$DescriptionTable;-><init>()V

    return-void
.end method
