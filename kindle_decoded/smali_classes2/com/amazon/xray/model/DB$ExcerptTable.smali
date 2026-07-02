.class public Lcom/amazon/xray/model/DB$ExcerptTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcerptTable"
.end annotation


# instance fields
.field public final GOTO:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final IMAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final RELATED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final START:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "excerpt"

    .line 97
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "id"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$ExcerptTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 90
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "start"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$ExcerptTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 91
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "length"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$ExcerptTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 92
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "image"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$ExcerptTable;->IMAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 93
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "related_entities"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$ExcerptTable;->RELATED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 94
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "goto"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$ExcerptTable;->GOTO:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$ExcerptTable;-><init>()V

    return-void
.end method
