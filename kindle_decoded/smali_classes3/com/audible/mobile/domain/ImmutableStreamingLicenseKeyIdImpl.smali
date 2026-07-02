.class public Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableStreamingLicenseKeyIdImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/StreamingLicenseKeyId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/domain/StreamingLicenseKeyId;",
        ">;",
        "Lcom/audible/mobile/domain/StreamingLicenseKeyId;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/StreamingLicenseKeyId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final licenseKeyBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;->licenseKeyBytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "License may not be null or empty"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;->licenseKeyBytes:[B

    return-void
.end method

.method public static nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/StreamingLicenseKeyId;
    .locals 1

    .line 65
    invoke-static {p0}, Lcom/audible/mobile/util/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object p0, Lcom/audible/mobile/domain/StreamingLicenseKeyId;->NONE:Lcom/audible/mobile/domain/StreamingLicenseKeyId;

    return-object p0

    .line 68
    :cond_0
    new-instance v0, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;

    invoke-direct {v0, p0}, Lcom/audible/mobile/domain/ImmutableStreamingLicenseKeyIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
