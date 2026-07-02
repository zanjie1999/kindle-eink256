.class public Lcom/facebook/internal/Utility$FetchedAppSettings;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchedAppSettings"
.end annotation


# instance fields
.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private supportsAttribution:Z

.field private supportsImplicitLogging:Z


# direct methods
.method private constructor <init>(ZZLjava/lang/String;Z)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean p1, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution:Z

    .line 91
    iput-boolean p2, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging:Z

    .line 92
    iput-object p3, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxContent:Ljava/lang/String;

    .line 93
    iput-boolean p4, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLcom/facebook/internal/Utility$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/internal/Utility$FetchedAppSettings;-><init>(ZZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getNuxContent()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public supportsAttribution()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution:Z

    return v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
