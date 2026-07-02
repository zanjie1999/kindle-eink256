.class final Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity$backButtonOnClickListener$1;
.super Ljava/lang/Object;
.source "YourShareableItemsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;->backButtonOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity$backButtonOnClickListener$1;->this$0:Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity$backButtonOnClickListener$1;->this$0:Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
