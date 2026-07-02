.class Lcom/amazon/kindle/s2k/SendToKindleActivity$7;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$7;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 848
    instance-of p4, p1, Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_2

    .line 850
    move-object p4, p1

    check-cast p4, Landroid/text/SpannableStringBuilder;

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 853
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 854
    invoke-static {p5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p6

    if-nez p6, :cond_0

    invoke-static {p5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p5

    if-nez p5, :cond_0

    add-int/lit8 p5, p3, 0x1

    .line 856
    invoke-virtual {p4, p3, p5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 863
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_5

    .line 866
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    .line 867
    invoke-static {p5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p6

    if-nez p6, :cond_3

    invoke-static {p5}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 869
    :cond_3
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 872
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
