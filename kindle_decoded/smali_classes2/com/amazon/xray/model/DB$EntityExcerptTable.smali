.class public Lcom/amazon/xray/model/DB$EntityExcerptTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityExcerptTable"
.end annotation


# instance fields
.field public final ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final EXCERPT:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "entity_excerpt"

    .line 81
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "entity"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityExcerptTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 78
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "excerpt"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$EntityExcerptTable;->EXCERPT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$EntityExcerptTable;-><init>()V

    return-void
.end method
