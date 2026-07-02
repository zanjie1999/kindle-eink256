.class final Lcom/amazon/kindle/stability/ActivityTagGeneratorImpl;
.super Ljava/lang/Object;
.source "CrashBitActivityLifecycleListener.kt"

# interfaces
.implements Lcom/amazon/kindle/stability/ActivityTagGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromActivity(Landroid/app/Activity;)Lcom/amazon/kindle/stability/ActivityTag;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/amazon/kindle/stability/ActivityTagImpl;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/stability/ActivityTagImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public fromCrashBitTag(Ljava/lang/String;)Lcom/amazon/kindle/stability/ActivityTag;
    .locals 1

    const-string v0, "crashBitTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/amazon/kindle/stability/ActivityTagImpl;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/stability/ActivityTagImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
