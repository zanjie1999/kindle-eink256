.class public Lcom/amazon/sitb/android/view/LinkStylingService;
.super Ljava/lang/Object;
.source "LinkStylingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;
    }
.end annotation


# static fields
.field private static final END_LEN:I = 0x2

.field private static final LINK_END:Ljava/lang/String; = "]]"

.field private static final LINK_START:Ljava/lang/String; = "[["

.field private static final START_LEN:I = 0x2


# instance fields
.field private activeColor:I

.field private defaultColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/amazon/sitb/android/view/LinkStylingService;->defaultColor:I

    .line 30
    iput p2, p0, Lcom/amazon/sitb/android/view/LinkStylingService;->activeColor:I

    return-void
.end method


# virtual methods
.method public setStyledText(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 5

    const-string v0, "[["

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "]]"

    .line 78
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 81
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 p2, -0x1

    if-le v0, p2, :cond_0

    if-le v1, p2, :cond_0

    .line 84
    new-instance p2, Lcom/amazon/sitb/android/view/component/ClickableLinkSpan;

    iget v3, p0, Lcom/amazon/sitb/android/view/LinkStylingService;->defaultColor:I

    iget v4, p0, Lcom/amazon/sitb/android/view/LinkStylingService;->activeColor:I

    invoke-direct {p2, p3, v3, v4}, Lcom/amazon/sitb/android/view/component/ClickableLinkSpan;-><init>(Landroid/view/View$OnClickListener;II)V

    .line 87
    sget p3, Lcom/amazon/sitb/android/view/LinkStylingService;->START_LEN:I

    add-int/2addr p3, v0

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    sget p2, Lcom/amazon/sitb/android/view/LinkStylingService;->END_LEN:I

    add-int/2addr p2, v1

    invoke-virtual {v2, v1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 89
    sget p2, Lcom/amazon/sitb/android/view/LinkStylingService;->START_LEN:I

    add-int/2addr p2, v0

    invoke-virtual {v2, v0, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 92
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance p2, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;

    invoke-direct {p2, p0, v2}, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;-><init>(Lcom/amazon/sitb/android/view/LinkStylingService;Landroid/text/Spannable;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
