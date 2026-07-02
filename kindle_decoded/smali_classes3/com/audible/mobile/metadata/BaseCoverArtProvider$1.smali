.class Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;
.super Ljava/lang/Object;
.source "BaseCoverArtProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/metadata/BaseCoverArtProvider;->get(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/metadata/BaseCoverArtProvider;

.field final synthetic val$audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field final synthetic val$callback:Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;

.field final synthetic val$coverArtType:Lcom/audible/mobile/audio/metadata/CoverArtType;


# direct methods
.method constructor <init>(Lcom/audible/mobile/metadata/BaseCoverArtProvider;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->this$0:Lcom/audible/mobile/metadata/BaseCoverArtProvider;

    iput-object p2, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->val$audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    iput-object p3, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->val$coverArtType:Lcom/audible/mobile/audio/metadata/CoverArtType;

    iput-object p4, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->val$callback:Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->this$0:Lcom/audible/mobile/metadata/BaseCoverArtProvider;

    iget-object v1, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->val$audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    iget-object v2, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->val$coverArtType:Lcom/audible/mobile/audio/metadata/CoverArtType;

    iget-object v3, p0, Lcom/audible/mobile/metadata/BaseCoverArtProvider$1;->val$callback:Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/mobile/metadata/BaseCoverArtProvider;->access$000(Lcom/audible/mobile/metadata/BaseCoverArtProvider;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/audio/metadata/CoverArtType;Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;)V

    return-void
.end method
