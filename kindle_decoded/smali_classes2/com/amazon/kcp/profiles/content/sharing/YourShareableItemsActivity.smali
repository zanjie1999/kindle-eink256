.class public final Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "YourShareableItemsActivity.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private final backButtonOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity$backButtonOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity$backButtonOnClickListener$1;-><init>(Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget p1, Lcom/amazon/kcp/profiles/R$layout;->your_shareable_items_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 16
    sget p1, Lcom/amazon/kcp/profiles/R$id;->shareable_items_back_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;->backButtonOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
