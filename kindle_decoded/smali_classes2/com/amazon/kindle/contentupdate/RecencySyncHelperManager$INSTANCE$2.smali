.class final Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecencySyncHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/contentupdate/RecencySyncHelperImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/contentupdate/RecencySyncHelperImpl;
    .locals 1

    .line 40
    new-instance v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperImpl;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/contentupdate/RecencySyncHelperImpl;

    move-result-object v0

    return-object v0
.end method
