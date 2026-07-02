.class public Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;
.super Ljava/lang/Object;
.source "A11YAnnouncementUI.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/UserInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;
    }
.end annotation


# static fields
.field public static final Factory:Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;

.field private static final MESSAGE_KEY:Ljava/lang/String; = "message"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;->Factory:Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;->message:Ljava/lang/String;

    return-void
.end method

.method public static final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;->Factory:Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;->message:Ljava/lang/String;

    return-object v0
.end method
