.class public final Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;
.super Ljava/lang/Object;
.source "StandaloneReaderLayoutCustomizer_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;->INSTANCE:Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;->INSTANCE:Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;
    .locals 1

    .line 13
    invoke-static {}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;->provideInstance()Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer_Factory;->get()Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;

    move-result-object v0

    return-object v0
.end method
