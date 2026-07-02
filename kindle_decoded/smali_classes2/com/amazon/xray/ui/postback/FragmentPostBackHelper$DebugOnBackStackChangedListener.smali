.class public Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;
.super Ljava/lang/Object;
.source "FragmentPostBackHelper.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DebugOnBackStackChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;


# direct methods
.method protected constructor <init>(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 6

    .line 273
    invoke-static {}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current postBack state:"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Root fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-static {v2}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$100(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "ROOT"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Stack size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-static {v2}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$100(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-static {v1}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$100(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 277
    invoke-static {}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Stack fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper$DebugOnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    invoke-static {v3}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->access$100(Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;)Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHILD_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
