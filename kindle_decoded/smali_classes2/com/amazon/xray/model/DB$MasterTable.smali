.class public Lcom/amazon/xray/model/DB$MasterTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MasterTable"
.end annotation


# instance fields
.field public final TBL_NAME:Lcom/amazon/xray/model/sql/column/StringColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "sqlite_master"

    .line 39
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "tbl_name"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$MasterTable;->TBL_NAME:Lcom/amazon/xray/model/sql/column/StringColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$MasterTable;-><init>()V

    return-void
.end method
