.class public interface abstract Lcom/audible/mobile/domain/StreamingLicenseKeyId;
.super Ljava/lang/Object;
.source "StreamingLicenseKeyId.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/StreamingLicenseKeyId;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/StreamingLicenseKeyId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/StreamingLicenseKeyId;->NONE:Lcom/audible/mobile/domain/StreamingLicenseKeyId;

    return-void
.end method
