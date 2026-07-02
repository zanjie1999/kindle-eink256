.class public final Lcom/amazon/kcp/home/database/HomeDatabase$Companion;
.super Ljava/lang/Object;
.source "HomeDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/database/HomeDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 306
    invoke-direct {p0}, Lcom/amazon/kcp/home/database/HomeDatabase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDatabase(Landroid/content/Context;)Lcom/amazon/kcp/home/database/HomeDatabase;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/amazon/kcp/home/database/HomeDatabase;->access$getINSTANCE$cp()Lcom/amazon/android/util/LazyWith;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/android/util/LazyWith;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/database/HomeDatabase;

    return-object p1
.end method
