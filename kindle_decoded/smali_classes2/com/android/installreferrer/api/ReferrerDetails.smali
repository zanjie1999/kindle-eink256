.class public Lcom/android/installreferrer/api/ReferrerDetails;
.super Ljava/lang/Object;
.source "ReferrerDetails.java"


# static fields
.field private static final KEY_GOOGLE_PLAY_INSTANT:Ljava/lang/String; = "google_play_instant"

.field private static final KEY_INSTALL_BEGIN_TIMESTAMP:Ljava/lang/String; = "install_begin_timestamp_seconds"

.field private static final KEY_INSTALL_REFERRER:Ljava/lang/String; = "install_referrer"

.field private static final KEY_REFERRER_CLICK_TIMESTAMP:Ljava/lang/String; = "referrer_click_timestamp_seconds"


# instance fields
.field private final mOriginalBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "referrerBundle"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/installreferrer/api/ReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getInstallReferrer()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/installreferrer/api/ReferrerDetails;->mOriginalBundle:Landroid/os/Bundle;

    const-string v1, "install_referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
