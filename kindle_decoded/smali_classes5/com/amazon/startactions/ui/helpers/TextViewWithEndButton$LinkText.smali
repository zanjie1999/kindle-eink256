.class Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;
.super Ljava/lang/Object;
.source "TextViewWithEndButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkText"
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private textSequence:Landroid/text/SpannableString;

.field final synthetic this$0:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, ""

    .line 370
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;-><init>(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->this$0:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->setLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;Ljava/lang/String;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Ljava/lang/String;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private configureForAccessibility()V
    .locals 6

    .line 443
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->this$0:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->access$500(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 447
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_default:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    .line 449
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 448
    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    new-instance v2, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->onClickListener:Landroid/view/View$OnClickListener;

    sget v4, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_default:I

    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v4

    sget v5, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color_active:I

    .line 452
    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;-><init>(Landroid/view/View$OnClickListener;II)V

    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    .line 453
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 451
    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 3

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 423
    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    return-void

    .line 427
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    .line 428
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 429
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->configureForAccessibility()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->textSequence:Landroid/text/SpannableString;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, ""

    .line 396
    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->setLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 410
    iput-object p2, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->contentDescription:Ljava/lang/String;

    .line 411
    iput-object p3, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->onClickListener:Landroid/view/View$OnClickListener;

    .line 412
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->setText(Ljava/lang/String;)V

    return-void
.end method
