.class public Lcom/amazon/xray/model/DB$OccurrenceTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OccurrenceTable"
.end annotation


# instance fields
.field public final ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final START:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "occurrence"

    .line 141
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "rowid"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "start"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 137
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "length"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 138
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "entity"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$OccurrenceTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$OccurrenceTable;-><init>()V

    return-void
.end method
