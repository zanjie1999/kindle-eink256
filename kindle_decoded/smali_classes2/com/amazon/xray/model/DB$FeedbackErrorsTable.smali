.class public Lcom/amazon/xray/model/DB$FeedbackErrorsTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackErrorsTable"
.end annotation


# instance fields
.field public final ERROR_TEXT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final ERROR_TYPE:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "feedback_errors"

    .line 186
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "id"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 183
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "error_type"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ERROR_TYPE:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 184
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "error_text"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ERROR_TEXT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;-><init>()V

    return-void
.end method
