.class final Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;
.super Ljava/lang/Object;
.source "KindleReaderSDKModule.kt"

# interfaces
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/KindleReaderSDKModule;-><init>(Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/Lazy<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;->INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Integer;
    .locals 1

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getCpuCores()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule$1;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
