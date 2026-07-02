.class public Lcom/amazon/xray/model/DB$SourceTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceTable"
.end annotation


# instance fields
.field public final ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LICENSE_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LICENSE_URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "source"

    .line 127
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "id"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$SourceTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 121
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "label"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$SourceTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 122
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string/jumbo v1, "url"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$SourceTable;->URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 123
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "license_label"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 124
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "license_url"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$SourceTable;-><init>()V

    return-void
.end method
