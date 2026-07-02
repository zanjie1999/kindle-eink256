.class public Lcom/amazon/xray/ui/util/FragmentStateUtil;
.super Ljava/lang/Object;
.source "FragmentStateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.ui.util.FragmentStateUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static apply(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 41
    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mSavedFragmentState"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 45
    const-class v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 48
    sget-object v0, Lcom/amazon/xray/ui/util/FragmentStateUtil;->TAG:Ljava/lang/String;

    const-string v1, "Unable to modify mSavedFragmentState classloader"

    invoke-static {v0, v1, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
