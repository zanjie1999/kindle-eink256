.class final Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;
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
        "Lcom/amazon/kindle/krx/plugin/IPluginInitializer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;->INSTANCE:Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;
    .locals 1

    .line 35
    invoke-static {}, Lcom/amazon/kindle/krx/PluginInitializer;->getInstance()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule$2;->get()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    move-result-object v0

    return-object v0
.end method
