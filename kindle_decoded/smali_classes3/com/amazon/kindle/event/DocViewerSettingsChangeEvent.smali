.class public Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;
.super Ljava/lang/Object;
.source "DocViewerSettingsChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;,
        Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;
    }
.end annotation


# instance fields
.field private changeType:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private settingType:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 98
    iput-object p2, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->changeType:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    .line 99
    iput-object p3, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->settingType:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    return-void
.end method


# virtual methods
.method public getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->changeType:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    return-object v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getSettingType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->settingType:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
