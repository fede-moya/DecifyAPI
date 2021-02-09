module Rest
  module V1
    class DecisionsController < ApiController
      after_action :create_associations, only: [:create]
      before_action :decision, only: %i[create_tag]
      before_action :validate_current_user, only: %i[create_tag]

      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }

          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          req['tags'].each do |tag|
            t = Tag.create(text: tag)
            DecisionTag.create(decision_id: decision_id, tag_id: t.id)
          end

          decision = Decision.find(decision_id)
          decision.send_notification
          rsp['participants'] = decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
          rsp['alternatives'] = decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }

          response.body = rsp.to_json
        end
      end
      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }

          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          req['tags'].each do |tag|
            t = Tag.create(text: tag)
            DecisionTag.create(decision_id: decision_id, tag_id: t.id)
          end

          decision = Decision.find(decision_id)
          decision.send_notification
          rsp['participants'] = decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
          rsp['alternatives'] = decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }

          response.body = rsp.to_json
        end
      end
      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }

          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          req['tags'].each do |tag|
            t = Tag.create(text: tag)
            DecisionTag.create(decision_id: decision_id, tag_id: t.id)
          end

          decision = Decision.find(decision_id)
          decision.send_notification
          rsp['participants'] = decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
          rsp['alternatives'] = decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }

          response.body = rsp.to_json
        end
      end
      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }

          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          req['tags'].each do |tag|
            t = Tag.create(text: tag)
            DecisionTag.create(decision_id: decision_id, tag_id: t.id)
          end

          decision = Decision.find(decision_id)
          decision.send_notification
          rsp['participants'] = decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
          rsp['alternatives'] = decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }

          response.body = rsp.to_json
        end
      end
      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }

          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          req['tags'].each do |tag|
            t = Tag.create(text: tag)
            DecisionTag.create(decision_id: decision_id, tag_id: t.id)
          end

          decision = Decision.find(decision_id)
          decision.send_notification
          rsp['participants'] = decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
          rsp['alternatives'] = decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }

          response.body = rsp.to_json
        end
      end
      def create_associations
        if response.created?
          rsp = JSON.parse(response.body)
          req = JSON.parse(request.body.read)
          decision_id = rsp['data']['id']

          req['participants'].each { |user_id| UserDecision.create(user_id: user_id, decision_id: decision_id) }

          req['alternatives'].each do |alternative|
            Alternative.create(title: alternative['title'], decision_id: decision_id)
          end

          req['tags'].each do |tag|
            t = Tag.create(text: tag)
            DecisionTag.create(decision_id: decision_id, tag_id: t.id)
          end

          decision = Decision.find(decision_id)
          decision.send_notification
          rsp['participants'] = decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
          rsp['alternatives'] = decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }

          response.body = rsp.to_json
        end
      end

      def user_decisions
        user = User.find(params[:id])
        response_data = { data: {} }
        Decision.states.each do |key, value|
          decisions = []
          user.decisions.where(state: value).each do |decision|
            decisions.push({
              data: Hash[decision.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }],
              alternatives: decision.alternatives.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }, 
              participants: decision.users.map { |alternative| Hash[alternative.serializable_hash.map { |k,v| k.eql?('id') ? [k, v.to_s] : [k,v] }] }
            })
          end
          response_data[:data][key.to_sym] = decisions
        end

        render json: response_data.to_json, status: :ok
      end

      def create_tag
        if params[:tags].present?
          params[:tags].each do |tag|
            t = Tag.create!(text: tag)
            DecisionTag.create!(decision: @decision, tag: t)
          end
        else
          head :bad_request
        end
      end

      private

      def validate_current_user
        head :forbbiden unless current_user.organization_id.eql?(@decision.user.organization.id)
      end

      def decision
        @decision = Decision.find_by(id: params[:id])
        head :no_found unless @decision
      end
    end
  end
end
