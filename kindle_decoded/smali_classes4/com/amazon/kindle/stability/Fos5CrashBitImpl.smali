.class public final Lcom/amazon/kindle/stability/Fos5CrashBitImpl;
.super Lcom/amazon/kindle/stability/CrashBitImpl;
.source "CrashBit.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "trackerNamespace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/stability/CrashBitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public safeCommit$com_amazon_kindle_rs(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    const-string v0, "$this$safeCommit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
