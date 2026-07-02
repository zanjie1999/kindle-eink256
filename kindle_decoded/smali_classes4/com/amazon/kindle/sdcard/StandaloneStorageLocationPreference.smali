.class public final Lcom/amazon/kindle/sdcard/StandaloneStorageLocationPreference;
.super Ljava/lang/Object;
.source "StandaloneStorageLocationPreference.kt"

# interfaces
.implements Lcom/amazon/kindle/sdcard/IStorageLocationPreference;


# instance fields
.field private final userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 1

    const-string v0, "userSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/StandaloneStorageLocationPreference;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method


# virtual methods
.method public isExternalSDCardPreferred()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/StandaloneStorageLocationPreference;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isDownloadBooksToExternalSDCardEnabled()Z

    move-result v0

    return v0
.end method

.method public setExternalSDCardPreferred(Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/StandaloneStorageLocationPreference;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setDownloadBooksToExternalSDCardEnabled(Z)V

    return-void
.end method
