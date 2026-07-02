.class public Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
.super Ljava/lang/Object;
.source "FeaturesSettingsData.java"


# instance fields
.field public final collectAnrs:Z

.field public final collectReports:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 24
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectAnrs:Z

    return-void
.end method
