.class final Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SideloadedContentUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/SideloadedContentUtilsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/content/SideloadedContentUtils;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/content/SideloadedContentUtils;
    .locals 1

    .line 230
    new-instance v0, Lcom/amazon/kindle/content/SideloadedContentUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/content/SideloadedContentUtils;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v0

    return-object v0
.end method
