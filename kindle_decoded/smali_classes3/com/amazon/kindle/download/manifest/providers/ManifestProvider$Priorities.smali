.class public final Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;
.super Ljava/lang/Object;
.source "ManifestProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/providers/ManifestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Priorities"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;

    invoke-direct {v0}, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;->$$INSTANCE:Lcom/amazon/kindle/download/manifest/providers/ManifestProvider$Priorities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
