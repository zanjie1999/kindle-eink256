.class public Lcom/amazon/xray/model/DB$EntityTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityTable"
.end annotation


# instance fields
.field public final COUNT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final HAS_INFO_CARD:Lcom/amazon/xray/model/sql/column/BooleanColumn;

.field public final ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "entity"

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "id"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 47
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "label"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 48
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "loc_label"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityTable;->LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 49
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string/jumbo v1, "type"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 50
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "count"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityTable;->COUNT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 51
    new-instance v0, Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const-string v1, "has_info_card"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/BooleanColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityTable;->HAS_INFO_CARD:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$EntityTable;-><init>()V

    return-void
.end method
