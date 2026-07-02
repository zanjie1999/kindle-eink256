.class public Lcom/amazon/xray/model/object/DisplayableOccurrence;
.super Ljava/lang/Object;
.source "DisplayableOccurrence.java"


# instance fields
.field private final occurrence:Lcom/amazon/xray/model/object/PositionRange;

.field private final occurrenceText:Ljava/lang/CharSequence;

.field private final pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/object/PositionRange;Ljava/lang/CharSequence;Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 26
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/xray/model/object/DisplayableOccurrence;->occurrence:Lcom/amazon/xray/model/object/PositionRange;

    .line 29
    iput-object p2, p0, Lcom/amazon/xray/model/object/DisplayableOccurrence;->occurrenceText:Ljava/lang/CharSequence;

    .line 30
    iput-object p3, p0, Lcom/amazon/xray/model/object/DisplayableOccurrence;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-void
.end method


# virtual methods
.method public getOccurrenceText()Ljava/lang/CharSequence;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/xray/model/object/DisplayableOccurrence;->occurrenceText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPageLabel()Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/xray/model/object/DisplayableOccurrence;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-object v0
.end method
