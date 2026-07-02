.class Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider$1;
.super Ljava/lang/Object;
.source "CognitoCachingCredentialsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/auth/IdentityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public identityChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-static {p1, p2}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;->access$000(Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider$1;->this$0:Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/auth/CognitoCachingCredentialsProvider;->clearCredentials()V

    return-void
.end method
