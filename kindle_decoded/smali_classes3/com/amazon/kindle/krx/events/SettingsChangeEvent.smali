.class public Lcom/amazon/kindle/krx/events/SettingsChangeEvent;
.super Ljava/lang/Object;
.source "SettingsChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IApplicationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/events/IApplicationEvent;"
    }
.end annotation


# instance fields
.field private control:Lcom/amazon/kindle/krx/settings/ISettingsControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private isInitialValueSet:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/settings/ISettingsControl;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "TT;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/krx/events/SettingsChangeEvent;->control:Lcom/amazon/kindle/krx/settings/ISettingsControl;

    .line 37
    iput-boolean p2, p0, Lcom/amazon/kindle/krx/events/SettingsChangeEvent;->isInitialValueSet:Z

    .line 38
    iput-object p3, p0, Lcom/amazon/kindle/krx/events/SettingsChangeEvent;->userId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSettingsControl()Lcom/amazon/kindle/krx/settings/ISettingsControl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/SettingsChangeEvent;->control:Lcom/amazon/kindle/krx/settings/ISettingsControl;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/SettingsChangeEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInitialValueSet()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/SettingsChangeEvent;->isInitialValueSet:Z

    return v0
.end method
