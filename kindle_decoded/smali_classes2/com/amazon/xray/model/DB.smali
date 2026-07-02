.class public Lcom/amazon/xray/model/DB;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/DB$FeedbackErrorsTable;,
        Lcom/amazon/xray/model/DB$BookMetadataTable;,
        Lcom/amazon/xray/model/DB$StringTable;,
        Lcom/amazon/xray/model/DB$OccurrenceTable;,
        Lcom/amazon/xray/model/DB$SourceTable;,
        Lcom/amazon/xray/model/DB$DescriptionTable;,
        Lcom/amazon/xray/model/DB$ExcerptTable;,
        Lcom/amazon/xray/model/DB$EntityExcerptTable;,
        Lcom/amazon/xray/model/DB$TypeTable;,
        Lcom/amazon/xray/model/DB$EntityTable;,
        Lcom/amazon/xray/model/DB$MasterTable;
    }
.end annotation


# static fields
.field public static final BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

.field public static final DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

.field public static final ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

.field public static final ENTITY_EXCERPT:Lcom/amazon/xray/model/DB$EntityExcerptTable;

.field public static final EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

.field public static final FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

.field public static final MASTER_TABLE:Lcom/amazon/xray/model/DB$MasterTable;

.field public static final OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

.field public static final SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

.field public static final STRING:Lcom/amazon/xray/model/DB$StringTable;

.field public static final TYPE:Lcom/amazon/xray/model/DB$TypeTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/amazon/xray/model/DB$MasterTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$MasterTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->MASTER_TABLE:Lcom/amazon/xray/model/DB$MasterTable;

    .line 15
    new-instance v0, Lcom/amazon/xray/model/DB$EntityTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$EntityTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    .line 16
    new-instance v0, Lcom/amazon/xray/model/DB$TypeTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$TypeTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    .line 17
    new-instance v0, Lcom/amazon/xray/model/DB$EntityExcerptTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$EntityExcerptTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->ENTITY_EXCERPT:Lcom/amazon/xray/model/DB$EntityExcerptTable;

    .line 18
    new-instance v0, Lcom/amazon/xray/model/DB$ExcerptTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$ExcerptTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    .line 19
    new-instance v0, Lcom/amazon/xray/model/DB$DescriptionTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$DescriptionTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    .line 20
    new-instance v0, Lcom/amazon/xray/model/DB$SourceTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$SourceTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    .line 21
    new-instance v0, Lcom/amazon/xray/model/DB$OccurrenceTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$OccurrenceTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    .line 22
    new-instance v0, Lcom/amazon/xray/model/DB$StringTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$StringTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    .line 23
    new-instance v0, Lcom/amazon/xray/model/DB$BookMetadataTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$BookMetadataTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    .line 24
    new-instance v0, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    invoke-direct {v0, v1}, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;-><init>(Lcom/amazon/xray/model/DB$1;)V

    sput-object v0, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    return-void
.end method
