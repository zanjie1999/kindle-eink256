.class public Lcom/amazon/xray/model/DB$TypeTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeTable"
.end annotation


# instance fields
.field public final ICON:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final SINGULAR_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final TOP_MENTIONED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string/jumbo v0, "type"

    .line 69
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "id"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$TypeTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 63
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "label"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$TypeTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 64
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "singular_label"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$TypeTable;->SINGULAR_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 65
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "icon"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$TypeTable;->ICON:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 66
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string/jumbo v1, "top_mentioned_entities"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$TypeTable;->TOP_MENTIONED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$TypeTable;-><init>()V

    return-void
.end method
