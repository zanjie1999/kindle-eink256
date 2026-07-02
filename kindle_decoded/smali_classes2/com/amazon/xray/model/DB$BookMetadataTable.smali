.class public Lcom/amazon/xray/model/DB$BookMetadataTable;
.super Lcom/amazon/xray/model/sql/table/Table;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookMetadataTable"
.end annotation


# instance fields
.field public final ERL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final HAS_EXCERPTS:Lcom/amazon/xray/model/sql/column/BooleanColumn;

.field public final HAS_IMAGES:Lcom/amazon/xray/model/sql/column/BooleanColumn;

.field public final NUM_IMAGES:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final NUM_PEOPLE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final NUM_TERMS:Lcom/amazon/xray/model/sql/column/IntegerColumn;

.field public final PREVIEW_IMAGES:Lcom/amazon/xray/model/sql/column/StringColumn;

.field public final SHOW_SPOILERS_DEFAULT:Lcom/amazon/xray/model/sql/column/BooleanColumn;

.field public final SRL:Lcom/amazon/xray/model/sql/column/IntegerColumn;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "book_metadata"

    .line 174
    invoke-direct {p0, v0}, Lcom/amazon/xray/model/sql/table/Table;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "rowid"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "srl"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->SRL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 164
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "erl"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->ERL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 165
    new-instance v0, Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const-string v1, "has_images"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/BooleanColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->HAS_IMAGES:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    .line 166
    new-instance v0, Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const-string v1, "has_excerpts"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/BooleanColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->HAS_EXCERPTS:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    .line 167
    new-instance v0, Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const-string v1, "show_spoilers_default"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/BooleanColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->SHOW_SPOILERS_DEFAULT:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    .line 168
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "num_people"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_PEOPLE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 169
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "num_terms"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_TERMS:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 170
    new-instance v0, Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const-string v1, "num_images"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/IntegerColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_IMAGES:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 171
    new-instance v0, Lcom/amazon/xray/model/sql/column/StringColumn;

    const-string v1, "preview_images"

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/model/sql/column/StringColumn;-><init>(Lcom/amazon/xray/model/sql/table/Table;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/xray/model/DB$BookMetadataTable;->PREVIEW_IMAGES:Lcom/amazon/xray/model/sql/column/StringColumn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/model/DB$1;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/amazon/xray/model/DB$BookMetadataTable;-><init>()V

    return-void
.end method
