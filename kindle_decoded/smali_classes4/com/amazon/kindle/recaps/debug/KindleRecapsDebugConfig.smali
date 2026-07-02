.class public final Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;
.super Ljava/lang/Object;
.source "KindleRecapsDebugConfig.kt"


# instance fields
.field private final recapsPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KindleRecapsPreferences"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;->recapsPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getRecapsEnabled()Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;->recapsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "KindleRecapsEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final setRecapsEnabled(Z)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;->recapsPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KindleRecapsEnabled"

    .line 18
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
