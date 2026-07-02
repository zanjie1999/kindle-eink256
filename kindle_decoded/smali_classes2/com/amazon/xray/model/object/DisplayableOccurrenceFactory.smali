.class public Lcom/amazon/xray/model/object/DisplayableOccurrenceFactory;
.super Ljava/lang/Object;
.source "DisplayableOccurrenceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayableOccurrence(Lcom/amazon/xray/model/object/PositionRange;II)Lcom/amazon/xray/model/object/DisplayableOccurrence;
    .locals 4

    .line 29
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 32
    invoke-static {p1, p2, p3}, Lcom/amazon/xray/plugin/util/ContentUtil;->getWordsAroundPosition(Lcom/amazon/xray/model/object/PositionRange;II)[Ljava/lang/String;

    move-result-object p2

    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v2, p2, v1

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, p2, v2

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 34
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 37
    aget-object p3, p2, v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 38
    aget-object p2, p2, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    .line 39
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v3, v1, p3, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 41
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result p2

    invoke-static {p2}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/xray/plugin/util/ContentUtil;->getPageLabel(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object p2

    .line 42
    new-instance p3, Lcom/amazon/xray/model/object/DisplayableOccurrence;

    invoke-direct {p3, p1, v3, p2}, Lcom/amazon/xray/model/object/DisplayableOccurrence;-><init>(Lcom/amazon/xray/model/object/PositionRange;Ljava/lang/CharSequence;Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;)V

    return-object p3
.end method
