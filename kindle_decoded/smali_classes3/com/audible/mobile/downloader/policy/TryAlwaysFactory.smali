.class public Lcom/audible/mobile/downloader/policy/TryAlwaysFactory;
.super Ljava/lang/Object;
.source "TryAlwaysFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/policy/TryAlwaysFactory$Policy;
    }
.end annotation


# static fields
.field private static final POLICY:Lcom/audible/mobile/downloader/policy/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/audible/mobile/downloader/policy/TryAlwaysFactory$Policy;

    invoke-direct {v0}, Lcom/audible/mobile/downloader/policy/TryAlwaysFactory$Policy;-><init>()V

    sput-object v0, Lcom/audible/mobile/downloader/policy/TryAlwaysFactory;->POLICY:Lcom/audible/mobile/downloader/policy/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/mobile/downloader/policy/TryAlwaysFactory;->POLICY:Lcom/audible/mobile/downloader/policy/RetryPolicy;

    return-object v0
.end method
