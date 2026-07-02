.class Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$8;
.super Ljava/lang/Object;
.source "GoodreadsShelfComponentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeManualShelfAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$8;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 763
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$8;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    iget-object p1, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
