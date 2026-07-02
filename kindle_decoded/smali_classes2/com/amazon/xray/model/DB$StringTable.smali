.class public Lcom/amazon/xray/model/DB$StringTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringTable"
.end annotation


# instance fields
.field public final ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LANGUAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "string"

    .line 154
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "id"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$StringTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 150
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "language"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$StringTable;->LANGUAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 151
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "text"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$StringTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$StringTable;-><init>()V

    return-void
.end method
