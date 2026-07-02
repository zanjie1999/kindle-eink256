.class final Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider$getView$1;
.super Ljava/lang/Object;
.source "ProfilesDebugPageProvider.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider$getView$1;->this$0:Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;->access$getContext$p(Lcom/amazon/kcp/profiles/debug/ProfilesDebugPageProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->setContentSharingEnabled(Landroid/content/Context;Z)V

    return-void
.end method
